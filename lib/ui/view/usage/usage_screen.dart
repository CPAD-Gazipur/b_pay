import 'package:b_pay/data/data.dart';
import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class UsageScreen extends StatelessWidget {
  const UsageScreen({Key? key}) : super(key: key);

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
                    title: 'Usage',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Manage Account',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Colors.blue,
                                    ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Account No.',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                    MeterData.meterList[0].accountNo,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          color: Colors.black87,
                                        ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Meter No.',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                    MeterData.meterList[0].meterNo,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          color: Colors.black87,
                                        ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  'Usage KWH',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                        fontSize: 14,
                                      ),
                                ),
                              ),
                              const SizedBox(width: 100),
                              Expanded(
                                child: CustomDropDown(
                                  showIcon: false,
                                  value: 'Daily',
                                  onChanged: (value) {},
                                  dropDownList: const [
                                    'Daily',
                                    'Monthly',
                                    'Yearly',
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Avg Monthly Consumption',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      const FaIcon(
                                        FontAwesomeIcons.database,
                                        color: Colors.black87,
                                        size: 18,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        '363',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3
                                            ?.copyWith(
                                              color: Colors.black87,
                                            ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        'KWh',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3
                                            ?.copyWith(
                                              color: Colors.black87,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Avg Monthly Bill',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      const FaIcon(
                                        FontAwesomeIcons.database,
                                        color: Colors.black87,
                                        size: 18,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        '3,000',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3
                                            ?.copyWith(
                                              color: Colors.black87,
                                            ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        'BDT',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3
                                            ?.copyWith(
                                              color: Colors.black87,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
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
