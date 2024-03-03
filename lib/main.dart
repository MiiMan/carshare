import 'package:carshare/presentation/entrypoint.dart';
import 'package:carshare/telegram/telegram_api.dart';
import 'package:flutter/material.dart';


bool isTelegram = false;
void main() {

  if (TelegramWebApp.initData != '') {
    isTelegram = true;
  }
  runApp(Entrypoint());
}
