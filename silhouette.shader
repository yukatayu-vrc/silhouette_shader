Shader "Yukatayu/Silhouette" {
	Properties {
	}

	SubShader {
		Tags { "RenderType"="Opaque" }

		Pass {
			CGPROGRAM
			#pragma target 3.0

			#pragma surface surf Standard fullforwardshadows
			struct Input {
				float2 uv_MainTex;
			};
			void surf (Input IN, inout SurfaceOutputStandard o) {
			}

			ENDCG
		}
	}
	FallBack "Diffuse"
}
