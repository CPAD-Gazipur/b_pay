import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TapBarAppBar extends StatelessWidget {
  final TabController tabController;
  const TapBarAppBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 20.0,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.offline_bolt_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    'PAY',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  )
                ],
              ),
              const LanguageWidget(),
            ],
          ),
          Consumer<LoginProvider>(builder: (context, state, child) {
            return Text(
              '${state.currentTabIndex}/${tabController.length}',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.black87,
                  ),
            );
          }),
        ],
      ),
    );
  }
}
