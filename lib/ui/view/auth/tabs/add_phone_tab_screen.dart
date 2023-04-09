import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddPhoneTabScreen extends StatelessWidget {
  final TabController tabController;

  const AddPhoneTabScreen({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            index: 1,
            tabController: tabController,
          ),
          const SizedBox(height: 20),
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
                Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: const Color(0xFF1E2C34),
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Sign in to continue',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 2),
                Container(
                  height: 2,
                  width: 25,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(height: 20),
                Text(
                  'Phone or User ID',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 5),
                Container(
                  color: Colors.grey.shade50,
                  child: TextField(
                    scrollPadding: EdgeInsets.zero,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '+8801621893919',
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14,
                      ),
                      isDense: true,
                      prefixIcon: Icon(
                        Icons.call,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  title: 'Next',
                  onPressed: () {
                    tabController.animateTo(tabController.index + 1);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
