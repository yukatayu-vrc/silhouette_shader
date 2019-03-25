Shader "Yukatayu/Silhouette" {
	Properties {
		_SilhouetteColor("Silhouette Color", Color) = (0, 0, 0, 1)
		_RimColor("Silhouette Color", Color) = (1, 0, 0, 1)
		_Gradient("Gradient", Range(1, 32)) = 12
	}

	SubShader {
		Tags { "RenderType"="Opaque" }

		CGPROGRAM
		#pragma target 3.0

		struct Input {
			float3 worldNormal;
			float3 viewDir;
		};

		float _Gradient;
		float4 _SilhouetteColor, _RimColor;

		#pragma surface surf Standard fullforwardshadows

		void surf (Input IN, inout SurfaceOutputStandard o) {
			o.Albedo = _SilhouetteColor;
			o.Emission = _RimColor.rgb * pow(1-saturate(dot(IN.viewDir, o.Normal)), _Gradient);
		}

		ENDCG

	}
	FallBack "Diffuse"
}
