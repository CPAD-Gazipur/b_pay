import 'package:b_pay/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeNavScreen extends StatelessWidget {
  const HomeNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              decoration: const BoxDecoration(
                color: Color(0xFF27803F),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Consumer<HomeProvider>(
                builder: (context, state, child) {
                  return BottomNavigationBar(
                    currentIndex: state.getCurrentIndex,
                    onTap: state.onTap,
                    backgroundColor: Colors.transparent,
                    type: BottomNavigationBarType.fixed,
                    iconSize: 18,
                    selectedFontSize: 12,
                    unselectedFontSize: 12,
                    selectedLabelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.white54,
                    items: const [
                      BottomNavigationBarItem(
                        icon: FaIcon(FontAwesomeIcons.house),
                        label: 'Home',
                        tooltip: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: FaIcon(FontAwesomeIcons.chartPie),
                        label: 'Usage',
                        tooltip: 'Usage',
                      ),
                      BottomNavigationBarItem(
                        icon: FaIcon(FontAwesomeIcons.fileInvoice),
                        label: 'History',
                        tooltip: 'History',
                      ),
                      BottomNavigationBarItem(
                        icon: FaIcon(FontAwesomeIcons.solidUser),
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
    );
  }
}
