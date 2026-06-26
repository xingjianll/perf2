#include <metal_stdlib>
using namespace metal;

kernel void kernel_main(
    threadgroup float* sm  [[threadgroup(0)]],
    device const float* in [[buffer(0)]])
{
    sm[0] = in[0];
}
