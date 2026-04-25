import 'package:edu_center_manager/core/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomLoginTextFormField extends StatelessWidget {
  const CustomLoginTextFormField({
    super.key,
    required this.controller,
    required this.label,
    required this.prefixIcon,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
  });

  final TextEditingController controller;
  final String label;
  final IconData prefixIcon;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
      decoration: InputDecoration(
        label: Text(label),
        filled: true,
        fillColor: context.colors.cardBackground,

        prefixIcon: Icon(prefixIcon),
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
