import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'formulas_ffi_platform_interface.dart';

/// An implementation of [FormulasFfiPlatform] that uses method channels.
class MethodChannelFormulasFfi extends FormulasFfiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('formulas_ffi');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
