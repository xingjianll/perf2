#include <metal_stdlib>
using namespace metal;

kernel void kernel_main(
    threadgroup float* sm  [[threadgroup(0)]],
    device       float* out [[buffer(0)]],
    uint tid [[thread_position_in_threadgroup]])
{
    float acc = 0.0f;
    for (uint i = 0; i < 4u; i++) {
        uint idx = (i * 3u + tid) & 63u;
        acc += sm[idx];
    }
    out[tid] = acc;
}
