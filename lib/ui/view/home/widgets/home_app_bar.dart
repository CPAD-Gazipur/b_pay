import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontSize: 18,
                    ),
              ),
              const SizedBox(height: 2),
              Text(
                'Md. Al-Amin',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Badge(
              position: BadgePosition.topEnd(
                top: -6,
                end: -6,
              ),
              badgeStyle: const BadgeStyle(
                padding: EdgeInsets.all(3),
              ),
              child: const Icon(
                Icons.notifications,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
