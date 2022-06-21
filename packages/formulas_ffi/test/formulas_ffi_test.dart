import 'package:flutter_test/flutter_test.dart';
import 'package:formulas_ffi/formulas_ffi.dart';
import 'package:formulas_ffi/formulas_ffi_platform_interface.dart';
import 'package:formulas_ffi/formulas_ffi_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFormulasFfiPlatform 
    with MockPlatformInterfaceMixin
    implements FormulasFfiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FormulasFfiPlatform initialPlatform = FormulasFfiPlatform.instance;

  test('$MethodChannelFormulasFfi is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFormulasFfi>());
  });

  test('getPlatformVersion', () async {
    FormulasFfi formulasFfiPlugin = FormulasFfi();
    MockFormulasFfiPlatform fakePlatform = MockFormulasFfiPlatform();
    FormulasFfiPlatform.instance = fakePlatform;
  
    expect(await formulasFfiPlugin.getPlatformVersion(), '42');
  });
}
