import 'package:flutter/material.dart';

class PaymentInfo extends StatelessWidget {
  final String title;
  final double? amount;
  final String subtitle;
  final int fractionalDigit;

  const PaymentInfo({
    Key? key,
    required this.title,
    this.amount,
    this.subtitle = '',
    this.fractionalDigit = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            amount == null
                ? subtitle
                : amount!.toStringAsFixed(fractionalDigit),
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.black87,
                ),
          ),
        ],
      ),
    );
  }
}
