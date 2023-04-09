import 'package:flutter/material.dart';

class CustomTitleSubTitle extends StatelessWidget {
  final String title, subTitle;

  const CustomTitleSubTitle({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline3?.copyWith(
                color: const Color(0xFF1E2C34),
              ),
        ),
        const SizedBox(height: 2),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 2),
        Container(
          height: 2,
          width: 32,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
