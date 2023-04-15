import 'package:b_pay/data/data.dart';
import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/view/views.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

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
                    title: 'History',
                    showDropDown: true,
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
                    const SizedBox(height: 5),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: HistoryData.historyList.length,
                      itemBuilder: (context, index) {
                        return HistoryWidget(
                          history: HistoryData.historyList[index],
                        );
                      },
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
