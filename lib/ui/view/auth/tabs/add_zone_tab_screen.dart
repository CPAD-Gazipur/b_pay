import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddZoneTabScreen extends StatefulWidget {
  final TabController tabController;

  const AddZoneTabScreen({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  State<AddZoneTabScreen> createState() => _AddZoneTabScreenState();
}

class _AddZoneTabScreenState extends State<AddZoneTabScreen> {
  late String _selected = 'DPDC';
  final _dropDownList = ['DPDC', 'DESCO', 'WZPDCL', 'POLLI BIDDUT'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Column(
        children: [
          CustomAppBar(
            index: 2,
            tabController: widget.tabController,
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Zone',
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: const Color(0xFF1E2C34),
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Sign in to continue',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 2),
                Container(
                  height: 2,
                  width: 25,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(height: 20),
                Text(
                  'Select Zone',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 5),
                Container(
                  color: Colors.grey.shade50,
                  child: DropdownButtonFormField(
                    borderRadius: BorderRadius.circular(4),
                    isDense: true,
                    value: _selected,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 6,
                      ),
                      prefixIcon: Icon(
                        Icons.bolt_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    items: _dropDownList.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selected = value.toString();
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  title: 'Next',
                  onPressed: () {
                    widget.tabController
                        .animateTo(widget.tabController.index + 1);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
