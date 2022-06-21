import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'formulas_ffi_method_channel.dart';

abstract class FormulasFfiPlatform extends PlatformInterface {
  /// Constructs a FormulasFfiPlatform.
  FormulasFfiPlatform() : super(token: _token);

  static final Object _token = Object();

  static FormulasFfiPlatform _instance = MethodChannelFormulasFfi();

  /// The default instance of [FormulasFfiPlatform] to use.
  ///
  /// Defaults to [MethodChannelFormulasFfi].
  static FormulasFfiPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FormulasFfiPlatform] when
  /// they register themselves.
  static set instance(FormulasFfiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
