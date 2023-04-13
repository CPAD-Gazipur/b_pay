import 'package:flutter/material.dart';

class MoneyWidget extends StatelessWidget {
  final String amount;
  final Function() onTap;

  const MoneyWidget({
    Key? key,
    required this.amount,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 6),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFBEF8D2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            amount,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.black87,
                ),
          ),
        ),
      ),
    );
  }
}
