import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/features/settings/presentation/view/widgets/language_card.dart';
import 'package:edu_center_manager/features/settings/presentation/view/widgets/section_header.dart';
import 'package:edu_center_manager/features/settings/presentation/view/widgets/theme_card.dart';
import 'package:edu_center_manager/features/settings/presentation/view_model/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsViewBodyDesktop extends StatelessWidget {
  const SettingsViewBodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        if (state is SettingsLoaded) {
          final settings = state.settingsModel;
          return Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SectionHeader(title: 'theme'.tr(), icon: Icons.palette_outlined),
                      const SizedBox(height: 16),
                      ThemeCard(settings: settings),
                    ],
                  ),
                ),
                const SizedBox(width: 48),
                Expanded(
                  child: Column(
                    children: [
                      SectionHeader(title: 'language'.tr(), icon: Icons.language_outlined),
                      const SizedBox(height: 16),
                      LanguageCard(settings: settings),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
