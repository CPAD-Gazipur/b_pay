import 'package:b_pay/data/data.dart';
import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/widgets/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
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
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                '10',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    ?.copyWith(
                                      fontSize: 24,
                                    ),
                              ),
                              Text(
                                'KWh',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                          Text(
                            'Average per day',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 200,
                            child: LineChart(
                              avgData(),
                            ),
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

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 0.7,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xffB9F5D3),
            strokeWidth: 0,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0.2,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 35,
            interval: 1,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xffB9F5D3)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 5,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 0),
            FlSpot(1, 2),
            FlSpot(2, 0),
            FlSpot(3, 1),
            FlSpot(3.5, 2),
            FlSpot(4, 3),
            FlSpot(4.5, 1),
            FlSpot(5, 2),
            FlSpot(6, 0),
            FlSpot(7, 1),
            FlSpot(8, 0),
            FlSpot(9, 3),
            FlSpot(10, 0),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    var style = TextStyle(
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade400,
      fontSize: 12,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 1:
        text = '20';
        break;
      case 2:
        text = '40';
        break;
      case 3:
        text = '60';
        break;
      case 4:
        text = '80';
        break;
      case 5:
        text = '100';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    var style = TextStyle(
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade400,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = Text('12 AM', style: style);
        break;
      case 4:
        text = Text('06 AM', style: style);
        break;
      case 6:
        text = Text('12 PM', style: style);
        break;
      case 8:
        text = Text('6 PM', style: style);
        break;
      case 10:
        text = Text('12 PM', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }
}

List<Color> gradientColors = [
  const Color(0xFFB9F5D3),
  const Color(0xFF2ED067),
];
