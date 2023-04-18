import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/widgets/exit_widget.dart';
import 'package:b_pay/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeNavScreen extends StatelessWidget {
  const HomeNavScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        body: Stack(
          children: [
            SafeArea(
              child: Consumer<HomeProvider>(
                builder: (context, state, child) {
                  return state.widgets[state.getCurrentIndex];
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: 58,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Consumer<HomeProvider>(
                  builder: (context, state, child) {
                    return BottomNavigationBar(
                      currentIndex: state.getCurrentIndex,
                      onTap: state.onTap,
                      type: BottomNavigationBarType.fixed,
                      selectedFontSize: 12,
                      unselectedFontSize: 12,
                      items: [
                        BottomNavigationBarItem(
                          icon: Image.asset(
                            ImageUtils.icHome,
                            height: 20,
                            width: 20,
                            fit: BoxFit.fitHeight,
                          ),
                          activeIcon: Image.asset(
                            ImageUtils.icHomeActive,
                            height: 20,
                            width: 20,
                            fit: BoxFit.fitHeight,
                          ),
                          label: 'Home',
                          tooltip: 'Home',
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset(
                            ImageUtils.icUsage,
                            height: 20,
                            width: 20,
                            fit: BoxFit.fitHeight,
                          ),
                          activeIcon: Image.asset(
                            ImageUtils.icUsageActive,
                            height: 20,
                            width: 20,
                            fit: BoxFit.fitHeight,
                          ),
                          label: 'Usage',
                          tooltip: 'Usage',
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset(
                            ImageUtils.icHistory,
                            height: 20,
                            width: 20,
                            fit: BoxFit.fitHeight,
                          ),
                          activeIcon: Image.asset(
                            ImageUtils.icHistoryActive,
                            height: 20,
                            width: 20,
                            fit: BoxFit.fitHeight,
                          ),
                          label: 'History',
                          tooltip: 'History',
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset(
                            ImageUtils.icProfile,
                            height: 20,
                            width: 20,
                            fit: BoxFit.fitHeight,
                          ),
                          activeIcon: Image.asset(
                            ImageUtils.icProfileActive,
                            height: 20,
                            width: 20,
                            fit: BoxFit.fitHeight,
                          ),
                          label: 'Profile',
                          tooltip: 'Profile',
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
