import 'package:b_pay/providers/providers.dart';
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
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 4.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 0.5,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 7,
                      backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/1200px-Flag_of_Bangladesh.svg.png'),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'বাং',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              )
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
