#version 450

layout (input_attachment_index = 0, binding = 0) uniform subpassInput inputAlbedo;
layout (input_attachment_index = 1, binding = 1) uniform subpassInput inputPosition;

layout (location = 0) in vec2 inUV;

layout (location = 0) out vec4 outColor;

void main() 
{
	// Read G-Buffer values from previous sub pass
	vec4 albedo = subpassLoad(inputAlbedo);   	
    vec4 position = subpassLoad(inputPosition);


	outColor = vec4(albedo.r, albedo.g, position.y, 1.0);

}
