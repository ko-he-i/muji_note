import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SetupPage extends StatefulWidget {
  const SetupPage({super.key});

  @override
  State<SetupPage> createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
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
              SettingsTile.navigation(
                title: const Text('Language'),
                leading: const Icon(Icons.language),
                value: const Text('日本語'),
              ),
              SettingsTile.navigation(
                title: const Text('お問い合わせ'),
                leading: const Icon(Icons.mail),
              )
            ],
          ),
        ],
      ),
    );
  }
}
