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
        sections: [
          SettingsSection(
            title: const Text('セクション'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('Language'),
                value: const Text('日本語'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
