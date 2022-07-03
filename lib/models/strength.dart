import 'package:flutter/foundation.dart';

class StrengthModel extends ChangeNotifier {
  final List<String> _itemsOfCalcModel = [
    '片持ち(集中)',
    '両端支持(集中)',
    '両端固定(集中)',
    '片持ち(等分布)',
    '両端支持(等分布)',
    '両端固定(等分布)'
  ];

  String _calcModel = '片持ち(集中)'; // 
  double _refThick = 6; // mm
  double _beamLength = 1.0; // m
  double _modulusYoung = 200.0; // ( E ) GPa
  double _inertiaOfArea = 1.0; // ( I ) moment of inertia of area m4
  double _yMax = 0.0; // replacement dist (mm)
  double _iMax = 0.0; // replacement angle (degree)

  List<String> get itemsOfCalcModel => _itemsOfCalcModel;
  String get calcModel => _calcModel;
  double get refThick => _refThick;
  double get beamLength => _beamLength;
  double get modulusYoung => _modulusYoung;
  double get inertiaOfArea => _inertiaOfArea;
  double get yMax => _yMax;
  double get iMax => _iMax;

  void setCalcModel(String text) {
    _calcModel = text;
    notifyListeners();
  }

  void setRefThick(double value) {
    _refThick = value;
    notifyListeners();
  }

  void setBeamLength(double value) {
    _beamLength = value;
    notifyListeners();
  }

  void setModulusYoung(double value) {
    _modulusYoung = value;
    notifyListeners();
  }

  void setInertiaOfArea(double value) {
    _inertiaOfArea = value;
    notifyListeners();
  }

  void calcBendingDeflection() {
    // TODO: Rust function
    // ...
    // ...
    _yMax = 0.0;
    _iMax = 0.0;
    notifyListeners();
  }

}