import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xpns/components/dashboard/ui/dashboard_screen.dart';
import 'package:xpns/components/deposit/deposit.dart';
import 'package:xpns/components/withdraw/withdraw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: DashboardScreen.id,
      routes: {
        DashboardScreen.id: (context) => const DashboardScreen(),
        DepositScreen.id: (context) => const DepositScreen(),
        WithdrawScreen.id: (context) => const WithdrawScreen(),
      },
    );
  }
}
