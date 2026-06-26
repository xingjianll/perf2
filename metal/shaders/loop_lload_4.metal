#include <metal_stdlib>
using namespace metal;

kernel void kernel_main(
    threadgroup float* sm  [[threadgroup(0)]],
    device       float* out [[buffer(0)]])
{
    float acc = 0.0f;
    for (int i = 0; i < 4; i++) {
        acc += sm[i];
    }
    out[0] = acc;
}
