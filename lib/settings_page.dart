import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  SettingsTile createSettingsTile({
    required String titleText,
    required IconData icon,
    required String valueText,
  }) {
    return SettingsTile.navigation(
      title: Text(titleText),
      leading: Icon(icon),
      value: Text(valueText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup Page'),
      ),
      body: SettingsList(
        platform: DevicePlatform.iOS,
        sections: [
          SettingsSection(
            title: const Text('サポート'),
            tiles: <SettingsTile>[
              createSettingsTile(
                  titleText: 'Language',
                  icon: Icons.language,
                  valueText: '日本語'),
              createSettingsTile(
                titleText: 'お問い合わせ',
                icon: Icons.email,
                valueText: '',
              ),
              createSettingsTile(
                titleText: 'プライバシー・ポリシー',
                icon: Icons.privacy_tip_outlined,
                valueText: '',
              )
            ],
          ),
        ],
      ),
    );
  }
}
