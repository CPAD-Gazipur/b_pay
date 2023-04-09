import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/view/home/home_screen.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddMeterTabScreen extends StatelessWidget {
  final TabController tabController;
  final LoginProvider provider;

  const AddMeterTabScreen({
    Key? key,
    required this.tabController,
    required this.provider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Column(
        children: [
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
                  title: 'Add Meter',
                  subTitle: 'Please add your meter number',
                ),
                const SizedBox(height: 20),
                Container(
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 42,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Add Meter',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 42,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'QR Code',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const CustomInputField(
                  title: 'Your Meter Number',
                  hintText: '1234567890',
                  icon: Icons.electric_meter_outlined,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  title: 'Add',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
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
