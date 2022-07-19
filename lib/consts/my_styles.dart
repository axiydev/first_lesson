import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStyle {
  static final TextStyle _base = GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);

  static final regularStyle = _base.copyWith(
      fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white);
}
