// ignore_for_file: camel_case_types

import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/core/models/drawer_item_model.dart';
// ignore: library_prefixes
import 'package:edu_center_manager/core/utils/app_style.dart' as AppTheme;
import 'package:flutter/material.dart';

class inActiveDrawerItem extends StatelessWidget {
  const inActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemModel.icon,
        color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.6),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerItemModel.title.tr(),
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.6),
            fontSize: AppTheme.getResponsiveFontSize(context, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
