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
//
// BaggageContextTests+XCTest.swift
//
import XCTest
///
/// NOTE: This file was generated by generate_linux_tests.rb
///
/// Do NOT edit this file directly as it will be regenerated automatically when needed.
///

extension LoggingContextTests {

   @available(*, deprecated, message: "not actually deprecated. Just deprecated to allow deprecated tests (which test deprecated functionality) without warnings")
   static var allTests : [(String, (LoggingContextTests) -> () throws -> Void)] {
      return [
                ("test_ExampleFrameworkContext_dumpBaggage", test_ExampleFrameworkContext_dumpBaggage),
                ("test_ExampleFrameworkContext_log_withBaggage", test_ExampleFrameworkContext_log_withBaggage),
                ("test_DefaultLoggingContext_log_withBaggage", test_DefaultLoggingContext_log_withBaggage),
                ("test_ExampleFrameworkContext_log_prefersLoggingContextOverExistingLoggerMetadata", test_ExampleFrameworkContext_log_prefersLoggingContextOverExistingLoggerMetadata),
           ]
   }
}

