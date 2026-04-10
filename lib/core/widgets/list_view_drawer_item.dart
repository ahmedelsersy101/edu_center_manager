import 'package:edu_center_manager/core/models/drawer_item_model.dart';
import 'package:edu_center_manager/core/utils/size_config.dart';
import 'package:edu_center_manager/core/widgets/drawer_item.dart';
import 'package:edu_center_manager/core/widgets/drawer_page.dart';
import 'package:flutter/material.dart';

class ListViewDrawerItem extends StatefulWidget {
  final Function(int index, DrawerPage page)? onItemSelected;

  const ListViewDrawerItem({super.key, this.onItemSelected});

  @override
  State<ListViewDrawerItem> createState() => _ListViewDrawerItemState();
}

class _ListViewDrawerItemState extends State<ListViewDrawerItem> {
  int selectedIndex = 0;

  final List<DrawerItemModel> drawerItems = [
    const DrawerItemModel(title: 'Students Management', icon: Icons.person_4_sharp),
    const DrawerItemModel(title: 'Teachers Management', icon: Icons.co_present_outlined),
    const DrawerItemModel(title: 'Courses Management', icon: Icons.cast_for_education),
    const DrawerItemModel(title: 'Groups Management', icon: Icons.groups_2),
    const DrawerItemModel(title: 'Payments Management', icon: Icons.payments_outlined),
  ];

  final List<DrawerPage> drawerPages = [
    DrawerPage.students,
    DrawerPage.teachers,
    DrawerPage.courses,
    DrawerPage.groups,
    DrawerPage.payments,
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final filteredItems = <DrawerItemModel>[];
    final filteredPages = <DrawerPage>[];

    for (int i = 0; i < drawerItems.length; i++) {
      if (screenWidth >= SizeConfig.desktop && drawerItems[i].title == 'app.stats') {
        continue; // متعرضش Stats في الديسكتوب
      }
      filteredItems.add(drawerItems[i]);
      filteredPages.add(drawerPages[i]);
    }

    return SliverList.builder(
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
              widget.onItemSelected?.call(index, filteredPages[index]);
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: filteredItems[index],
              isSelected: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }

  void updateSelectedIndex(int index) {
    if (mounted) {
      setState(() {
        selectedIndex = index;
      });
    }
  }
}
