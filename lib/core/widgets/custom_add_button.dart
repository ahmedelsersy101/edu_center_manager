import 'package:edu_center_manager/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, required this.onAdd, required this.text});

  final VoidCallback onAdd;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onAdd,
      icon: const Icon(Icons.add_circle_outline_sharp, size: 20),
      label: Text(
        text,
        style: AppStyles.styleBold18(
          context,
        ).copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
