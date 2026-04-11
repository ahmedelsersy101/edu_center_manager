import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/core/models/drawer_item_model.dart';
import 'package:edu_center_manager/core/widgets/drawer_item.dart';
import 'package:edu_center_manager/core/widgets/drawer_page.dart';
import 'package:flutter/material.dart';

class ListViewDrawerItem extends StatefulWidget {
  final Function(int index, DrawerPage page)? onItemSelected;
  final bool isMobile;
  final DrawerPage? activePage;

  const ListViewDrawerItem({
    super.key,
    this.onItemSelected,
    this.isMobile = false,
    this.activePage,
  });

  @override
  State<ListViewDrawerItem> createState() => _ListViewDrawerItemState();
}

class _ListViewDrawerItemState extends State<ListViewDrawerItem> {

  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'dashboard'.tr(), icon: Icons.dashboard_outlined),
    DrawerItemModel(title: 'studentsManagement'.tr(), icon: Icons.person_4_sharp),
    DrawerItemModel(title: 'teachersManagement'.tr(), icon: Icons.co_present_outlined),
    DrawerItemModel(title: 'coursesManagement'.tr(), icon: Icons.cast_for_education),
    DrawerItemModel(title: 'groupsManagement'.tr(), icon: Icons.groups_2),
    DrawerItemModel(title: 'attendanceManagement'.tr(), icon: Icons.check_circle_outline),
    DrawerItemModel(title: 'paymentsManagement'.tr(), icon: Icons.payments_outlined),
    DrawerItemModel(title: 'paymentsReport'.tr(), icon: Icons.receipt_long_outlined),
    DrawerItemModel(title: 'attendanceReport'.tr(), icon: Icons.report_outlined),
  ];

  final List<DrawerPage> drawerPages = [
    DrawerPage.home,
    DrawerPage.students,
    DrawerPage.teachers,
    DrawerPage.courses,
    DrawerPage.groups,
    DrawerPage.attendance,
    DrawerPage.payments,
    DrawerPage.paymentsReport,
    DrawerPage.attendReport,
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final filteredItems = <DrawerItemModel>[];
    final filteredPages = <DrawerPage>[];

    for (int i = 0; i < drawerItems.length; i++) {
      if (widget.isMobile) {
        // Only add Students, Teachers, Courses, Groups
        if (drawerPages[i] == DrawerPage.students ||
            drawerPages[i] == DrawerPage.teachers ||
            drawerPages[i] == DrawerPage.courses ||
            drawerPages[i] == DrawerPage.groups) {
          filteredItems.add(drawerItems[i]);
          filteredPages.add(drawerPages[i]);
        }
      } else {
        filteredItems.add(drawerItems[i]);
        filteredPages.add(drawerPages[i]);
      }
    }

    return SliverList.builder(
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (widget.activePage != filteredPages[index]) {
              widget.onItemSelected?.call(index, filteredPages[index]);
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: filteredItems[index],
              isSelected: widget.activePage == filteredPages[index],
            ),
          ),
        );
      },
    );
  }

  // We no longer need updateSelectedIndex as state is driven by activePage

}
