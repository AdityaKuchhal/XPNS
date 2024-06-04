import 'package:flutter/material.dart';

class WithdrawScreen extends StatefulWidget {
  static const String id = 'WithdrawScreen';

  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.redAccent,
    );
  }
}
