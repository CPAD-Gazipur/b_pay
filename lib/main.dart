import 'package:b_pay/providers/providers.dart';
import 'package:b_pay/ui/view/views.dart';
import 'package:b_pay/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme.init(context: context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bPay',
      theme: AppTheme.getLightTheme,
      home: const LoginScreen(),
    );
  }
}
