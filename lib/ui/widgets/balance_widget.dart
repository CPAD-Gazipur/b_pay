import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BalanceWidget extends StatelessWidget {
  final String title;
  final double balance;

  const BalanceWidget({
    Key? key,
    required this.title,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            FaIcon(
              FontAwesomeIcons.xmark,
              size: 16,
              color: Colors.grey.shade600,
            )
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            FaIcon(
              FontAwesomeIcons.database,
              color: balance > 0
                  ? Theme.of(context).primaryColor
                  : const Color(0xFFDF2528),
              size: 18,
            ),
            const SizedBox(width: 5),
            Text(
              balance.toStringAsFixed(0),
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: balance > 0
                        ? Theme.of(context).primaryColor
                        : const Color(0xFFDF2528),
                  ),
            ),
            Text(
              'BDT',
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: balance > 0
                        ? Theme.of(context).primaryColor
                        : const Color(0xFFDF2528),
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
