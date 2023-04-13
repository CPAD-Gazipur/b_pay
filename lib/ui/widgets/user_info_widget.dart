import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  final String name, address;

  const UserInfoWidget({
    Key? key,
    required this.name,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          address,
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
