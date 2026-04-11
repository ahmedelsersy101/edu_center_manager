import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('settings'.tr()));
  }
}
