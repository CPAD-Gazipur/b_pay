import 'package:b_pay/model/model.dart';

class MeterData {
  static List<MeterModel> meterList = [
    MeterModel(
      accountNo: '783456978',
      meterNo: '1234567890',
      sequenceNo: '0001',
      balance: 500,
      user: UserModel(
        name: 'Md. Al-Amin',
        address: 'North Khailkur, National University - 1704, Gazipur',
      ),
    ),
    MeterModel(
      accountNo: '369258147',
      meterNo: '1234567891',
      sequenceNo: '0002',
      balance: -50,
      user: UserModel(
        name: 'Supria Mamun Mim',
        address: 'Dattapara House Building, Bonomala Rd, Tongi, Gazipur',
      ),
    ),
  ];
}
