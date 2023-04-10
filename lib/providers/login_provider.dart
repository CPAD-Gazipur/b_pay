import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier {
  int currentTabIndex = 0;

  void changeTabIndex(int newIndex) {
    currentTabIndex = newIndex;
    notifyListeners();
  }

  String _selected = 'DPDC';
  final dropDownList = ['DPDC', 'DESCO', 'WZPDCL', 'POLLI BIDDUT'];

  String get selected => _selected;

  void changeSelectedItem(String newItem) {
    _selected = newItem;
    notifyListeners();
  }

  bool _isQRCodeSelected = false;

  bool get isQrCode => _isQRCodeSelected;

  void changeMeterScreen(bool isQRCode) {
    _isQRCodeSelected = isQRCode;
    notifyListeners();
  }
}
