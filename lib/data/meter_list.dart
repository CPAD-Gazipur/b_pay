import 'package:b_pay/model/model.dart';

class MeterList {
  static List<MeterModel> meterList = [
    MeterModel(
      accountNo: '783456978',
      meterNo: '1234567890',
      sequenceNo: '0001',
      balance: 500,
    ),
    MeterModel(
      accountNo: '369258147',
      meterNo: '1234567891',
      sequenceNo: '0002',
      balance: -50,
    ),
  ];
}
