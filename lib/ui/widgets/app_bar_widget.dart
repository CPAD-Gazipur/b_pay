import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final Function()? onPressed;

  const AppBarWidget({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed ??
              () {
                Navigator.of(context).pop();
              },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
      ],
    );
  }
}
