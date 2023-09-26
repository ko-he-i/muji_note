import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:url_launcher/url_launcher.dart';
//lib_file
import 'package:muji_note/privacy_policy_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final Uri _url = Uri.parse('https://forms.gle/HGqvHctu368w9Knd7');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
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
              SettingsTile.navigation(
                title: const Text('Language'),
                leading: const Icon(Icons.language),
                value: const Text('日本語'),
              ),
              SettingsTile.navigation(
                title: const Text('お問い合わせ'),
                leading: const Icon(Icons.email),
                onPressed: (context) {
                  _launchUrl();
                },
              ),
              SettingsTile.navigation(
                title: const Text('プライバシー・ポリシー'),
                leading: const Icon(Icons.privacy_tip_outlined),
                onPressed: (context) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
