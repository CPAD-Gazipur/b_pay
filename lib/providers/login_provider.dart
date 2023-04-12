import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  /// CHANGE TAB OPTION
  int currentTabIndex = 0;
  bool changeTab = false;

  void changeTabIndex(int newIndex) {
    currentTabIndex = newIndex;
    notifyListeners();
  }

  void changeTabScreen(bool value) {
    changeTab = value;
    notifyListeners();
  }

  /// DROPDOWN OPTION
  String _selected = 'DPDC';
  final dropDownList = ['DPDC', 'DESCO', 'WZPDCL', 'POLLI BIDDUT'];

  String get selected => _selected;

  void changeSelectedItem(String newItem) {
    _selected = newItem;
    notifyListeners();
  }

  /// QR CODE OPTION
  bool _isQRCodeSelected = false;

  bool get isQrCode => _isQRCodeSelected;

  void changeMeterScreen(bool isQRCode) {
    _isQRCodeSelected = isQRCode;
    notifyListeners();
  }
}
