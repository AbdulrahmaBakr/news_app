import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_ui_setup/widget/card.dart';
import 'package:news_app_ui_setup/widget/title_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Title_Text(text: 'News'),
            Text(
              'App',
              style: GoogleFonts.acme(color: Colors.amber, fontSize: 30),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        height: 120,
        child:
            ListView(scrollDirection: Axis.horizontal, children: const <Widget>[
          card_widget(),
          card_widget(),
          card_widget(),
          card_widget(),
        ]),
      ),
    );
  }
}
