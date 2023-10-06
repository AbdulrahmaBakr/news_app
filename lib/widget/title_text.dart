import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Title_Text extends StatelessWidget {
  const Title_Text({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.acme(color: Colors.black, fontSize: 40),
    );
  }
}
