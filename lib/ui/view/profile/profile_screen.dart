import 'package:b_pay/data/data.dart';
import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/view/profile/widgets/profile_option.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer<HomeProvider>(
                builder: (context, state, child) {
                  return AppBarWidget(
                    title: 'Profile',
                    showLanguage: true,
                    onPressed: () {
                      state.onTap(0);
                    },
                  );
                },
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.penToSquare,
                                size: 16,
                                color: Colors.grey.shade600,
                              )
                            ],
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/alamin-karno',
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Md. Al-Amin',
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      fontSize: 16,
                                    ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '+8801621893919',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 14,
                                    ),
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: ProfileOptionData.profileOptions.length,
                        itemBuilder: (context, index) {
                          return ProfileOption(
                            profileOption:
                                ProfileOptionData.profileOptions[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
