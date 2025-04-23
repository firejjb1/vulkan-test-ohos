#version 450

layout (location = 0) in vec3 inPos;
layout (location = 1) in vec2 inUV;

layout (location = 0) out vec2 outUV;
layout (location = 1) out vec3 outPos;

out gl_PerVertex {
	vec4 gl_Position;   
};

layout(push_constant) uniform PushConsts {
	mat4 mvp;
} pushConsts;

void main() 
{
	outUV = inUV;
	gl_Position = pushConsts.mvp * vec4(inPos.xyz, 1.0);
	outPos = inPos.xyz;
	//gl_Position =  vec4(inPos.xyz, 1.0);
}