import 'package:edu_center_manager/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomFilterDropdown extends StatelessWidget {
  const CustomFilterDropdown({
    super.key,
    required this.selected,
    required this.onChanged,
    required this.list,
  });

  final String selected;
  final ValueChanged<String?> onChanged;
  final List<DropdownMenuItem<String>> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Theme.of(context).colorScheme.primary),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selected,
          isExpanded: true,
          icon: Icon(Icons.filter_list, color: Theme.of(context).colorScheme.primary),
          style: AppStyles.styleRegular14(
            context,
          ).copyWith(color: Theme.of(context).colorScheme.primary),
          onChanged: onChanged,
          items: list,
        ),
      ),
    );
  }
}
