import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/view/auth/tabs/add_meter_tab_screen.dart';
import 'package:b_pay/ui/view/auth/tabs/add_phone_tab_screen.dart';
import 'package:b_pay/ui/view/auth/tabs/add_zone_tab_screen.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const List<Tab> tabs = <Tab>[
    Tab(text: 'Add Phone'),
    Tab(text: 'Add Zone'),
    Tab(text: 'Add Meter'),
  ];

  @override
  Widget build(BuildContext context) {
    LoginProvider provider = Provider.of<LoginProvider>(context, listen: false);
    return DefaultTabController(
      length: tabs.length,
      child: Builder(
        builder: (context) {
          final TabController tabController = DefaultTabController.of(context)!;
          return WillPopScope(
            onWillPop: () {
              if (tabController.index == 2) {
                tabController.animateTo(1);
                context.read<LoginProvider>().changeTabIndex(2);
                return Future(() => false);
              } else if (tabController.index == 1) {
                tabController.animateTo(0);
                context.read<LoginProvider>().changeTabIndex(1);
                return Future(() => false);
              } else {
                return Future(() => true);
              }
            },
            child: Scaffold(
              body: SafeArea(
                child: Column(
                  children: [
                    CustomAppBar(
                      tabController: tabController,
                    ),
                    Expanded(
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          AddPhoneTabScreen(
                            tabController: tabController,
                            provider: provider,
                          ),
                          AddZoneTabScreen(
                            tabController: tabController,
                            provider: provider,
                          ),
                          AddMeterTabScreen(
                            tabController: tabController,
                            provider: provider,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
