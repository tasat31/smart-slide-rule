import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formulas_ffi/formulas_ffi_method_channel.dart';

void main() {
  MethodChannelFormulasFfi platform = MethodChannelFormulasFfi();
  const MethodChannel channel = MethodChannel('formulas_ffi');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
