import 'package:b_pay/ui/view/history/history_screen.dart';
import 'package:b_pay/ui/view/home/home_screen.dart';
import 'package:b_pay/ui/view/usage/usage_screen.dart';
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
    const UsageScreen(),
    const HistoryScreen(),
    Container(),
  ];
}
