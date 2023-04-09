import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddZoneTabScreen extends StatelessWidget {
  final TabController tabController;
  final LoginProvider provider;

  const AddZoneTabScreen({
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
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitleSubTitle(
              title: 'Select Zone',
              subTitle: 'Sign in to continue',
            ),
            const SizedBox(height: 20),
            Text(
              'Select Zone',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 5),
            Consumer<LoginProvider>(builder: (context, state, child) {
              return Container(
                color: Colors.grey.shade50,
                child: DropdownButtonFormField(
                  borderRadius: BorderRadius.circular(4),
                  isDense: true,
                  value: state.selected,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 6,
                    ),
                    prefixIcon: Icon(
                      Icons.bolt_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  items: state.dropDownList.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                        value,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      state.changeSelectedItem(value);
                    }
                  },
                ),
              );
            }),
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
    );
  }
}
