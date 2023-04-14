import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final Function(dynamic) onChanged;
  final List<String> dropDownList;
  final dynamic value;
  final bool showIcon;

  const CustomDropDown({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.dropDownList,
    this.showIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade50,
      child: DropdownButtonFormField(
        borderRadius: BorderRadius.circular(4),
        isDense: true,
        value: value,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: showIcon ? 6 : 12,
            vertical: showIcon ? 0 : 8,
          ),
          prefixIcon: showIcon
              ? const Icon(
                  Icons.bolt_rounded,
                  color: Colors.grey,
                )
              : null,
        ),
        items: dropDownList.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.black54,
                  ),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
