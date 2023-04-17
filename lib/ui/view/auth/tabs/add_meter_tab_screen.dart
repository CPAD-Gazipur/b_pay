import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/view/home_nav/home_nav_screen.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:b_pay/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';

class AddMeterTabScreen extends StatelessWidget {
  final TabController tabController;
  final LoginProvider provider;

  const AddMeterTabScreen({
    Key? key,
    required this.tabController,
    required this.provider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController meterController = TextEditingController();
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Consumer<LoginProvider>(
                    builder: (context, state, child) {
                      return state.isQrCode
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Scanning Ongoing...',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(color: Colors.black54),
                                ),
                                const SizedBox(height: 5),
                                Center(
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 210,
                                        width: 210,
                                        color: Colors.transparent,
                                        child: SvgPicture.asset(
                                          ImageUtils.scannerBG,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Container(
                                        height: 200,
                                        width: 200,
                                        padding: const EdgeInsets.all(10),
                                        child: MobileScanner(
                                          onDetect: (capture) {
                                            final List<Barcode> barcodes =
                                                capture.barcodes;
                                            for (final barcode in barcodes) {
                                              meterController.text =
                                                  barcode.rawValue!;
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            )
                          : const SizedBox();
                    },
                  ),
                  const CustomTitleSubTitle(
                    title: 'Add Meter',
                    subTitle: 'Please add your meter number',
                  ),
                  const SizedBox(height: 20),
                  Consumer<LoginProvider>(
                    builder: (context, state, child) {
                      return Container(
                        height: 42,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  state.changeMeterScreen(false);
                                },
                                child: Container(
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: state.isQrCode
                                        ? Colors.transparent
                                        : Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Add Meter',
                                      style: state.isQrCode
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline5
                                          : Theme.of(context)
                                              .textTheme
                                              .headline5
                                              ?.copyWith(
                                                color: Colors.white,
                                              ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  state.changeMeterScreen(true);
                                },
                                child: Container(
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: state.isQrCode
                                        ? Theme.of(context).primaryColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'QR Code',
                                      style: state.isQrCode
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline5
                                              ?.copyWith(
                                                color: Colors.white,
                                              )
                                          : Theme.of(context)
                                              .textTheme
                                              .headline5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomInputField(
                    controller: meterController,
                    title: 'Your Meter Number',
                    hintText: '1234567890',
                    icon: Icons.electric_meter_outlined,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    title: 'Add',
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const HomeNavScreen(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
