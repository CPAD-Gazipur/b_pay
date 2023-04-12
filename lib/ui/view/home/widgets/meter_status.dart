import 'package:b_pay/model/meter_model.dart';
import 'package:b_pay/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MeterStatus extends StatelessWidget {
  final MeterModel meter;

  const MeterStatus({
    Key? key,
    required this.meter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
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
              Text(
                'Balance',
                style: Theme.of(context).textTheme.headline6,
              ),
              FaIcon(
                FontAwesomeIcons.xmark,
                size: 16,
                color: Colors.grey.shade600,
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.database,
                color: meter.balance > 0
                    ? Theme.of(context).primaryColor
                    : const Color(0xFFDF2528),
                size: 18,
              ),
              const SizedBox(width: 5),
              Text(
                meter.balance.toStringAsFixed(0),
                style: Theme.of(context).textTheme.headline3?.copyWith(
                      color: meter.balance > 0
                          ? Theme.of(context).primaryColor
                          : const Color(0xFFDF2528),
                    ),
              ),
              Text(
                'BDT',
                style: Theme.of(context).textTheme.headline3?.copyWith(
                      color: meter.balance > 0
                          ? Theme.of(context).primaryColor
                          : const Color(0xFFDF2528),
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
                    'Account No.',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    meter.accountNo,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Meter No.',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    meter.meterNo,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sequence No.',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    meter.sequenceNo,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  backgroundColor: meter.balance > 0
                      ? const Color(0xFFDF2528)
                      : const Color(0xFF9BA2B0),
                  height: 32,
                  title: 'Emergency',
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: CustomButton(
                  height: 32,
                  title: 'Recharge',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
