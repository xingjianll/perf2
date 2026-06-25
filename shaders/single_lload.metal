#include <metal_stdlib>
using namespace metal;

kernel void kernel_main(
    threadgroup float* sm  [[threadgroup(0)]],
    device       float* out [[buffer(0)]],
    uint tid [[thread_position_in_threadgroup]])
{
    float x = sm[tid];
    out[tid] = x;
}
