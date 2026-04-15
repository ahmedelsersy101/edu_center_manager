import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/core/models/user_info_model.dart';
import 'package:edu_center_manager/core/utils/app_images.dart';
import 'package:edu_center_manager/core/utils/app_style.dart';
import 'package:edu_center_manager/core/utils/app_themes.dart';
import 'package:edu_center_manager/core/widgets/drawer_page.dart';
import 'package:edu_center_manager/core/widgets/list_view_drawer_item.dart';
import 'package:edu_center_manager/core/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, this.onItemSelected, this.isMobile = false, this.activePage});
  final Function(int index, DrawerPage page)? onItemSelected;
  final bool isMobile;
  final DrawerPage? activePage;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.skyDeep,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 120,
              color: Theme.of(context).colorScheme.primary, // Primary color
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Assets.logo, height: 70, color: Colors.white),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('appTitle'.tr(), style: AppStyles.styleRegular16(context)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(color: Theme.of(context).colorScheme.surface, height: 1, thickness: 1),
          ),
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.logo,
                title: 'Admin',
                subTitle: 'admin@edu.com',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(color: Theme.of(context).colorScheme.surface, height: 1, thickness: 1),
          ),
          ListViewDrawerItem(
            onItemSelected: onItemSelected,
            isMobile: isMobile,
            activePage: activePage,
          ),
        ],
      ),
    );
  }
}
