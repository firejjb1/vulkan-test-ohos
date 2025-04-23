#version 450

layout (location = 0) in vec2 inUV;
layout (location = 1) in vec3 inPos;

layout (location = 0) out vec4 outAlbedo;
layout (location = 1) out vec4 outPosition;

void main() 
{
  //outFragColor = vec4(inUV, 0, 1);
  outAlbedo = vec4(inUV, 0, 1.0);
  outPosition = vec4(inPos, 1.0);
}