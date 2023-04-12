import 'package:flutter/material.dart';

class AccountInfoWidget extends StatelessWidget {
  final String sequenceTitle;
  final String accountNo, meterNo, sequenceNo;

  const AccountInfoWidget({
    Key? key,
    this.sequenceTitle = 'Sequence No.',
    required this.accountNo,
    required this.meterNo,
    required this.sequenceNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account No.',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              accountNo,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Meter No.',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              meterNo,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sequenceTitle,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              sequenceNo,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ],
    );
  }
}
