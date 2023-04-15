import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final bool showDropDown;

  const AppBarWidget({
    Key? key,
    required this.title,
    this.onPressed,
    this.showDropDown = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
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
          ),
        ),
        const Spacer(),
        const SizedBox(width: 40),
        showDropDown
            ? Expanded(
                child: CustomDropDown(
                  showIcon: false,
                  value: '2023',
                  onChanged: (value) {},
                  dropDownList: const [
                    '2023',
                    '2022',
                    '2021',
                    '2020',
                  ],
                ),
              )
            : const SizedBox(),
        const SizedBox(width: 16),
      ],
    );
  }
}
