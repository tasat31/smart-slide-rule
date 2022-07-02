import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:smart_slide_rule/models/login.dart';

/// Mocks a callback function on which you can use verify
class MockCallbackFunction extends Mock {
  call();
}

void main() {
	group('$LoginModel', () {
		late LoginModel loginModel;
		final notifyListenerCallback = MockCallbackFunction();

    setUp(() {
      loginModel = LoginModel()
        ..addListener(notifyListenerCallback);
      reset(notifyListenerCallback); // resets your mock before each test
    });

    test('set username value and calls listeners', () {
      loginModel.setUserName('Joe');
      expect(loginModel.userName, 'Joe');
    });

  });
}