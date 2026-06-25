#include <metal_stdlib>
using namespace metal;

kernel void kernel_main(
    threadgroup float* sm  [[threadgroup(0)]],
    device       float* out [[buffer(0)]],
    uint tid [[thread_position_in_threadgroup]])
{
    float r[64];
    for (uint i = 0; i < 64u; i++) {
        r[i] = sm[(i * 3u + tid) & 4095u];
    }
    for (uint i = 0; i < 64u; i++) {
        out[tid * 64u + i] = r[i];
    }
}
