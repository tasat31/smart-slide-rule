import 'package:flutter/foundation.dart';

class LoginModel extends ChangeNotifier {
  String _userName = '';
  String _password = '';

  String get userName => _userName;
  String get password => _password;

  void setUserName(String text) {
    _userName = text;
    notifyListeners();
  }

  void setPassword(String text) {
    _password = text;
    notifyListeners();
  }
}