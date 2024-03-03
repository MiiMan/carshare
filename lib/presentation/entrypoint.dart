import 'package:carshare/main.dart';
import 'package:carshare/presentation/login_page/login_page.dart';
import 'package:carshare/presentation/themes.dart';
import 'package:carshare/telegram/telegram_api.dart';
import 'package:flutter/material.dart';

class Entrypoint extends StatelessWidget {

  Themes standartTheme = const Themes(
      background100: Color(0xFF131416),
      background80: Color(0xFF34363A),
      background50: Color(0xFF323232),
      accent100: Color(0xFF00FFEA),
      accent70: Color(0xFF07C2B4),
      accent30: Color(0xFF193435),
      semiaccent100: Color(0xFFEDECEE),
      semiaccent80: Color(0xFF565656),
      foreground: Color(0xFFFFFFFF));

  Entrypoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(extensions: [
        ThemesExtension(standartTheme )
      ]),
      routes: {
        'login' : (_) => const LoginPage(),
      },
      initialRoute:  'login',
    );
  }
}
