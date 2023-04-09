import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final int index;
  final TabController tabController;
  const CustomAppBar({
    Key? key,
    required this.index,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.offline_bolt_outlined,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 2),
                Text(
                  'PAY',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 8,
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/1200px-Flag_of_Bangladesh.svg.png'),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'বাং',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            )
          ],
        ),
        Text(
          '$index/${tabController.length}',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black87,
              ),
        ),
      ],
    );
  }
}
