import Foundation
import Metal

guard CommandLine.arguments.count >= 2 else {
    print("usage: \(CommandLine.arguments[0]) <metallib> [function-name]")
    exit(2)
}
let libPath = CommandLine.arguments[1]
let fnName  = CommandLine.arguments.count >= 3 ? CommandLine.arguments[2] : "kernel_main"

guard let dev = MTLCreateSystemDefaultDevice() else {
    fputs("no Metal device\n", stderr); exit(1)
}
let lib = try dev.makeLibrary(URL: URL(fileURLWithPath: libPath))
guard let fn = lib.makeFunction(name: fnName) else {
    fputs("no function '\(fnName)' in \(libPath)\n", stderr); exit(1)
}
_ = try dev.makeComputePipelineState(function: fn)
print("ok: pipeline created for \(fnName) on \(dev.name)")
