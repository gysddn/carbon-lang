// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

var globl: i32 = 5;

// CHECK:STDOUT: ; ModuleID = 'decl_with_init.carbon'
// CHECK:STDOUT: source_filename = "decl_with_init.carbon"
// CHECK:STDOUT:
// CHECK:STDOUT: @globl = internal global i32 0
// CHECK:STDOUT: @llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__global_init, ptr null }]
// CHECK:STDOUT:
// CHECK:STDOUT: define internal void @__global_init() section ".text.startup" {
// CHECK:STDOUT:   store i32 5, ptr @globl, align 4
// CHECK:STDOUT:   ret void
// CHECK:STDOUT: }
