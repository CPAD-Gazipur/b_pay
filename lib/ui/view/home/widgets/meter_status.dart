import 'package:b_pay/model/meter_model.dart';
import 'package:b_pay/ui/view/views.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
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
                  onPressed: () {
                    openEmergencyDialog(context);
                  },
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: CustomButton(
                  height: 32,
                  title: 'Recharge',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PayBillScreen(
                          meterInfo: meter,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void openEmergencyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.xmark,
                    size: 16,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 20,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: const Color(0xFF16A34A).withOpacity(0.2),
                    child: CircleAvatar(
                      radius: 52,
                      backgroundColor: const Color(0xFFEBFFF2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '৳100.00',
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      fontSize: 18,
                                    ),
                          ),
                          Text(
                            'Eligible',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      color: Colors.grey.shade700,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Once availed, the used amount will be deducted from your next recharge',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          fontSize: 14,
                          height: 1.8,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Are you agree?',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontSize: 14,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.red.shade400,
                            shape: const StadiumBorder(),
                            side: BorderSide(
                              color: Colors.red.shade400,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('No'),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Yes'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
