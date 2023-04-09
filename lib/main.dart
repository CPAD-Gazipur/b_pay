import 'package:b_pay/ui/view/views.dart';
import 'package:b_pay/utils/utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme.init(context: context);
    return MaterialApp(
      title: 'bPay',
      theme: AppTheme.getLightTheme,
      home: const LoginScreen(),
    );
  }
}
