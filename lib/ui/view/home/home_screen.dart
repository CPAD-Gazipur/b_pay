import 'package:b_pay/data/meter_list.dart';
import 'package:b_pay/providers/login_provider.dart';
import 'package:b_pay/ui/view/views.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginProvider provider = Provider.of<LoginProvider>(context, listen: false);

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const HomeAppBar(),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: MeterList.meterList.length,
              itemBuilder: (context, index) {
                return MeterStatus(
                  meter: MeterList.meterList[index],
                );
              },
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: OutlinedButton(
                onPressed: () {
                  provider.changeTabIndex(3);
                  provider.changeTabScreen(true);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  'Add More Meter',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 12,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
