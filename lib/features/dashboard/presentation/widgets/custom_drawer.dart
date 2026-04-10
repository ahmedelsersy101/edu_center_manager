import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/core/utils/app_themes.dart';
import 'package:edu_center_manager/core/widgets/drawer_page.dart';
import 'package:edu_center_manager/core/widgets/list_view_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, this.onItemSelected});
  final Function(int index, DrawerPage page)? onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.skyDeep,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 50)),
          // SliverToBoxAdapter(
          //   child: Divider(color: Theme.of(context).colorScheme.surface, height: 1, thickness: 1),
          // ),
          SliverToBoxAdapter(
            child: Container(
              height: 120,
              color: Theme.of(context).colorScheme.primary, // Primary color
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.dashboard, size: 50),
                    SizedBox(height: 10),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'appTitle'.tr(),
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(color: Theme.of(context).colorScheme.surface, height: 1, thickness: 1),
          ),
          ListViewDrawerItem(onItemSelected: onItemSelected),
        ],
      ),
    );
  }
}
