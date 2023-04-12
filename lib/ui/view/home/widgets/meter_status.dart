import 'package:b_pay/model/meter_model.dart';
import 'package:b_pay/ui/widgets/custom_button.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
          BalanceWidget(
            title: 'Balance',
            balance: meter.balance,
          ),
          const SizedBox(height: 10),
          AccountInfoWidget(
            accountNo: meter.accountNo,
            meterNo: meter.meterNo,
            sequenceNo: meter.sequenceNo,
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
