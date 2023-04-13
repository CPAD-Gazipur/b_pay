import 'package:b_pay/model/model.dart';

class MeterModel {
  String accountNo, meterNo, sequenceNo;
  double balance;
  UserModel user;

  MeterModel({
    required this.accountNo,
    required this.meterNo,
    required this.sequenceNo,
    required this.balance,
    required this.user,
  });
}
