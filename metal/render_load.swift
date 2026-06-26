import Foundation
import Metal

guard CommandLine.arguments.count >= 2 else {
    print("usage: \(CommandLine.arguments[0]) <metallib>")
    exit(2)
}
let libPath = CommandLine.arguments[1]

guard let dev = MTLCreateSystemDefaultDevice() else {
    fputs("no Metal device\n", stderr); exit(1)
}
let lib = try dev.makeLibrary(URL: URL(fileURLWithPath: libPath))
guard let vfn = lib.makeFunction(name: "vert_main"),
      let ffn = lib.makeFunction(name: "frag_main") else {
    fputs("missing vert_main or frag_main in \(libPath)\n", stderr); exit(1)
}

let desc = MTLRenderPipelineDescriptor()
desc.vertexFunction = vfn
desc.fragmentFunction = ffn
desc.colorAttachments[0].pixelFormat = .bgra8Unorm

_ = try dev.makeRenderPipelineState(descriptor: desc)
print("ok: render pipeline created on \(dev.name)")
