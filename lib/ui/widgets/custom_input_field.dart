import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String title, hintText;
  final IconData icon;
  final TextEditingController controller;

  const CustomInputField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(height: 5),
        Container(
          color: Colors.grey.shade50,
          child: TextField(
            controller: controller,
            scrollPadding: EdgeInsets.zero,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              border: Theme.of(context).inputDecorationTheme.border,
              focusedBorder:
                  Theme.of(context).inputDecorationTheme.focusedBorder,
              hintStyle: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 14,
              ),
              isDense: true,
              prefixIcon: Icon(
                icon,
                color: Colors.grey.shade400,
                size: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
