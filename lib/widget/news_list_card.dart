import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(108, 158, 158, 158),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/Business.webp',
              width: 390,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                'To display an image with rounded corners or circular shaped corners, place the Image widget as child of ClipRRect widget with circular border radius specified for the ClipRRect widget',
                style: GoogleFonts.aboreto(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
                'To display an image with rounded corners or circular shaped corners, place the Image widget as child of ClipRRect widget with circular border radius specified for the ClipRRect widget',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.aboreto(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(98, 0, 0, 0))),
          ),
        ],
      ),
    );
  }
}
