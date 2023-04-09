import 'package:b_pay/ui/view/auth/tabs/add_meter_tab_screen.dart';
import 'package:b_pay/ui/view/auth/tabs/add_phone_tab_screen.dart';
import 'package:b_pay/ui/view/auth/tabs/add_zone_tab_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const List<Tab> tabs = <Tab>[
    Tab(text: 'Add Phone'),
    Tab(text: 'Add Zone'),
    Tab(text: 'Add Meter'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (context) {
        final TabController tabController = DefaultTabController.of(context)!;
        return Scaffold(
          body: SafeArea(
            child: TabBarView(
              children: [
                AddPhoneTabScreen(tabController: tabController),
                AddZoneTabScreen(tabController: tabController),
                AddMeterTabScreen(tabController: tabController),
              ],
            ),
          ),
        );
      }),
    );
  }
}
