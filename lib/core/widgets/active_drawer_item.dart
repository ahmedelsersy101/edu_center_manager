import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/core/models/drawer_item_model.dart';
// ignore: library_prefixes
import 'package:edu_center_manager/core/utils/app_style.dart' as AppTheme;
import 'package:flutter/material.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemModel.icon,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerItemModel.title.tr(),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: AppTheme.getResponsiveFontSize(context, fontSize: 16),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      trailing: Container(
        width: 3.27,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
