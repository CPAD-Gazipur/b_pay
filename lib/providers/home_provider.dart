import 'package:b_pay/ui/view/home/home_screen.dart';
import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get getCurrentIndex => _currentIndex;

  void onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  List<Widget> widgets = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];
}
