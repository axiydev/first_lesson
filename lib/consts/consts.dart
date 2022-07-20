import 'package:flutter/material.dart';

typedef S = String;

class MyConsts {
  static const String image = 'assets/images/ic_image.png';
  static const String base = 'assets/images/';
  static const String bell = '${base}ic_bell.svg';
  static const String lock = '${base}lock.svg';
  static const String chat = '${base}chat.svg';
  static const String chat_multi = '${base}char_multi.svg';
  static const String earth = '${base}earth.svg';
  static const String folder = '${base}folder.svg';
  static const S question = '${base}question.svg';
  static const S settings = '${base}settings.svg';
  static const S sticker = '${base}sticker.svg';

  static final messengerKey = GlobalKey<ScaffoldMessengerState>();
}
