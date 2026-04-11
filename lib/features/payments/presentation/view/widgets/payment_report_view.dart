import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PaymentReportView extends StatelessWidget {
  const PaymentReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('paymentsReport').tr()));
  }
}
