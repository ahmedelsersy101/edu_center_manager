import 'package:edu_center_manager/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key, required this.onSearch, required this.hintTextField});
  final String hintTextField;
  final ValueChanged<String> onSearch;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearch,
      decoration: InputDecoration(
        hintText: hintTextField,
        hintStyle: AppStyles.styleRegular16(context),
        prefixIcon: Icon(Icons.search, color: Theme.of(context).colorScheme.primary),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        filled: true,
        fillColor: Theme.of(context).cardColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
