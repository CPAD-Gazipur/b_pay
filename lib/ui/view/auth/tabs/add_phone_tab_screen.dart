import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddPhoneTabScreen extends StatelessWidget {
  final TabController tabController;
  final LoginProvider provider;

  const AddPhoneTabScreen({
    Key? key,
    required this.tabController,
    required this.provider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.network(
                    'https://1.bp.blogspot.com/-w4RpOLGN1i0/XkAeHXK8NdI/AAAAAAAAE0I/7Pk-XolQKj8aqxX_D812i-PMvoPVmnmLACLcBGAsYHQ/w1200-h630-p-k-no-nu/Sheikh_Hasinar_Udyog_gore_gore_Bidyut%25402x.png'),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTitleSubTitle(
                    title: 'Welcome',
                    subTitle: 'Sign in to continue',
                  ),
                  const SizedBox(height: 20),
                  CustomInputField(
                    controller: phoneController,
                    title: 'Phone or User ID',
                    hintText: '+880 1621893919',
                    icon: Icons.call,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    title: 'Next',
                    onPressed: () {
                      tabController.animateTo(tabController.index + 1);
                      context
                          .read<LoginProvider>()
                          .changeTabIndex(tabController.index + 1);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
