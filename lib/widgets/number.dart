import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Number extends StatelessWidget {
  final String number;
  const Number({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xFFC4C4C4).withOpacity(0.2),
      ),
      child: Text(
        number,
        style: GoogleFonts.montserrat(fontSize: 14),
      ),
    );
  }
}
