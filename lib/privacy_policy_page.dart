import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プライバシー・ポリシー'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text('本文書く'),
            Text('本文ーーーーーーーーーーーーー'),
          ],
        ),
      ),
    );
  }
}
