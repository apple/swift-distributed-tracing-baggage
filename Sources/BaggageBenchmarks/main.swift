//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift Distributed Tracing Baggage open source project
//
// Copyright (c) 2020 Apple Inc. and the Swift Distributed Tracing Baggage project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import BaggageBenchmarkTools

assert({
    print("===========================================================================")
    print("=          !!  YOU ARE RUNNING BENCHMARKS IN DEBUG MODE  !!               =")
    print("=     When running on the command line, use: `swift run -c release`       =")
    print("===========================================================================")
    return true
}())

@inline(__always)
private func registerBenchmark(_ bench: BenchmarkInfo) {
    registeredBenchmarks.append(bench)
}

@inline(__always)
private func registerBenchmark(_ benches: [BenchmarkInfo]) {
    benches.forEach(registerBenchmark)
}

@inline(__always)
private func registerBenchmark(_ name: String, _ function: @escaping (Int) -> Void, _ tags: [BenchmarkCategory]) {
    registerBenchmark(BenchmarkInfo(name: name, runFunction: function, tags: tags))
}

registerBenchmark(BaggagePassingBenchmarks)
registerBenchmark(LoggingContextBenchmarks)

main()
