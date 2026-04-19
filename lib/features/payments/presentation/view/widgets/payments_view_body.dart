import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PaymentsViewBody extends StatelessWidget {
  const PaymentsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: const Text('payments').tr());
  }
}
