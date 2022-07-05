import 'package:flutter/foundation.dart';

class LinkBudgetModel extends ChangeNotifier {
  double _powerTrW = 1.0; // w
  double _frequency = 80000000.0; // Hz
  double _powerTrdBm = 30.0; // dBm
  double _gainTrdBm = 1.0; // dBm
  double _eirpdBm = 1.0; // dBm
  double _gainRcvdBm = 1.0; // dBm
  double _pathDist = 10000.0; // m
  double _freeSpaceLossdBm = 0.0; // dBm

  double get powerTrW => _powerTrW;
  double get frequency => _frequency;
  double get powerTrdBm => _powerTrdBm;
  double get gainTrdBm => _gainTrdBm;
  double get eirpdBm => _eirpdBm;
  double get gainRcvdBm => _gainRcvdBm;
  double get pathDist => _pathDist;
  double get freeSpaceLossdBm => _freeSpaceLossdBm;

  void setPowerTrW(double value) {
    _powerTrW = value;
    notifyListeners();
  }

  void setFrequency(double value) {
    _frequency = value;
    notifyListeners();
  }

  void setPowerTrdBm(double value) {
    _powerTrdBm = value;
    notifyListeners();
  }

  void setGainTrdBm(double value) {
    _gainTrdBm = value;
    notifyListeners();
  }

  void setEirpdBm(double value) {
    _eirpdBm = value;
    notifyListeners();
  }

  void setGainRcvdBm(double value) {
    _gainRcvdBm = value;
    notifyListeners();
  }

  void setPathDist(double value) {
    _pathDist = value;
    notifyListeners();
  }

  void setFreeSpaceLossdBm(double value) {
    _freeSpaceLossdBm = value;
    notifyListeners();
  }

}