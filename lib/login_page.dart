import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
//lib
import 'package:muji_note/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'むじの手帳',
              style: GoogleFonts.notoSansJp(
                fontSize: 40, // フォントサイズ
                fontWeight: FontWeight.bold, // フォントの太さ
                color: Color.fromARGB(255, 237, 95, 95), // フォントの色
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 244, 220),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                      icon: Icon(Icons.mail),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 244, 220),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      icon: Icon(Icons.password),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: '新規登録は', // default text style
                children: <TextSpan>[
                  TextSpan(
                      text: 'こちら',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue, // ボタンのテキスト色
                        decoration: TextDecoration.underline, // 下線を追加
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const RegistrationPage(),
                            ),
                          );
                        }),
                  const TextSpan(
                    text: 'から',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
