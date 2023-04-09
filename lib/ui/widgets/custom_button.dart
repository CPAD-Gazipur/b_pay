import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
