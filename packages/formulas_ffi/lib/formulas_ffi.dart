// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:ffi';
import 'dart:io';
import 'package:flutter/foundation.dart' as Foundation;
import 'formulas_ffi_platform_interface.dart';

// For C/Rust
typedef add_func = Int64 Function(Int64 a, Int64 b);
// For Dart
typedef Add = int Function(int a, int b);

// ignore_for_file: unused_import, camel_case_types, non_constant_identifier_names
final DynamicLibrary _dl = _open();

/// Reference to the Dynamic Library, it should be only used for low-level access
final DynamicLibrary dl = _dl;

DynamicLibrary _open() {
  if (Platform.environment.containsKey('FLUTTER_TEST')) {
    final prefix = "${Directory.current.path}/.sandbox";
    if (Platform.isLinux) return DynamicLibrary.open('${prefix}/libformulas_ffi.so');
    if (Platform.isAndroid) return DynamicLibrary.open('${prefix}/libformulas_ffi.so');
    if (Platform.isMacOS) return DynamicLibrary.open('${prefix}/libformulas_ffi.a');
    if (Platform.isIOS) return DynamicLibrary.open('${prefix}/libformulas_ffi.a');
    if (Platform.isWindows) return DynamicLibrary.open('${prefix}/formulas_ffi.dll');
  } else {
    if (Platform.isLinux) return DynamicLibrary.open('libformulas_ffi.so');
    if (Platform.isAndroid) return DynamicLibrary.open('libformulas_ffi.so');
    if (Platform.isMacOS) return DynamicLibrary.executable();
    if (Platform.isIOS) return DynamicLibrary.executable();
    if (Platform.isWindows) return DynamicLibrary.open('formulas_ffi.dll');
  }
  
  throw UnsupportedError('This platform is not supported.');
}

class FormulasFfi {

  Future<String?> getPlatformVersion() {
    return FormulasFfiPlatform.instance.getPlatformVersion();
  }

  FormulasFfi() {}

  int add(int a, int b) {
    // get a function pointer to the symbol called `add`
    final addPointer = _dl.lookup<NativeFunction<add_func>>('add');
    // and use it as a function
    final sum = addPointer.asFunction<Add>();
    return sum(a, b);
  }
}
