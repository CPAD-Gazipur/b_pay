import 'package:b_pay/model/meter_model.dart';
import 'package:b_pay/ui/view/views.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  final MeterModel meterInfo;
  final String amount;

  const ReviewScreen({
    Key? key,
    required this.meterInfo,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarWidget(title: 'Review'),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BalanceWidget(
                            title: 'Total Balance',
                            balance: meterInfo.balance,
                          ),
                          const SizedBox(height: 10),
                          UserInfoWidget(
                            name: meterInfo.user.name,
                            address: meterInfo.user.address,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Divider(),
                          ),
                          AccountInfoWidget(
                            accountNo: meterInfo.accountNo,
                            meterNo: meterInfo.meterNo,
                            sequenceNo: meterInfo.sequenceNo,
                            sequenceTitle: 'Seq No.',
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Divider(),
                          ),
                          PaymentSummary(
                            mainAmount: double.parse(amount),
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            title: 'Pay Now',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ReceiptScreen(
                                    meterInfo: meterInfo,
                                    amount: amount,
                                  ),
                                ),
                              );
                            },
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
    ;
  }
}
