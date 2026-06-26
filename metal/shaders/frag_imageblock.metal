#include <metal_stdlib>
using namespace metal;

vertex float4 vert_main(uint vid [[vertex_id]]) {
    return float4(0);
}

fragment half4 frag_main(half4 prev [[color(0)]]) {
    return prev + half4(1.0h);
}
