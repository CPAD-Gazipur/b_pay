import 'package:b_pay/ui/view/views.dart';
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
    const ProfileScreen(),
  ];
}
