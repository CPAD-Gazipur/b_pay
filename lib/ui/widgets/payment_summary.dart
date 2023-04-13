import 'package:b_pay/model/meter_model.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PaymentSummary extends StatelessWidget {
  final double mainAmount;
  final MeterModel? meterInfo;
  final bool isReceipt;

  const PaymentSummary({
    Key? key,
    this.meterInfo,
    required this.mainAmount,
    this.isReceipt = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isReceipt
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PaymentInfo(
                    title: 'Seq No',
                    subtitle: '0=8',
                  ),
                  const PaymentInfo(
                    title: 'Prepaid Token No',
                    subtitle: '12-34-56-78',
                  ),
                  PaymentInfo(
                    title: 'Account No.',
                    subtitle: meterInfo!.accountNo,
                  ),
                  PaymentInfo(
                    title: 'Meter No.',
                    subtitle: meterInfo!.meterNo,
                  ),
                ],
              )
            : const SizedBox(),
        PaymentInfo(
          title: 'Vending Amount',
          amount: mainAmount,
          fractionalDigit: 1,
        ),
        PaymentInfo(
          title: 'Demand Charge',
          amount: mainAmount * .16,
          fractionalDigit: 0,
        ),
        PaymentInfo(
          title: 'Meter Rend IP',
          amount: mainAmount * .04,
          fractionalDigit: 0,
        ),
        PaymentInfo(
          title: 'VAT',
          amount: mainAmount * .07163,
        ),
        PaymentInfo(
          title: 'Rebate',
          amount: -mainAmount * .01237,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Divider(),
        ),
        isReceipt
            ? PaymentInfo(
                title: 'Energy Cost.',
                amount: mainAmount * .74074,
              )
            : PaymentInfo(
                title: 'Payable',
                amount: mainAmount,
              ),
      ],
    );
  }
}
