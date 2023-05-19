import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets/number.dart';
import 'package:google_fonts/google_fonts.dart';

class Notefication extends StatelessWidget {
  const Notefication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 94,
            ),
            Text(
              "Almost there",
              style: GoogleFonts.montserrat(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              "Please enter the 6-digit code sent to your",
              style: GoogleFonts.montserrat(fontSize: 14),
            ),
            Row(
              children: [
                Text(
                  "email",
                  style: GoogleFonts.montserrat(fontSize: 14),
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  "hemmyhtec@gmail.com",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  "for verification.",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    6,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                      ),
                      child: Number(
                        number: index.toString(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 47,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 244,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFFFC33E),
                  ),
                  child: Text(
                    "VERIFY",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 55,
            ),
            Center(
              child: Text(
                "Didn't receive any code?",
                style: GoogleFonts.montserrat(
                    fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Center(
              child: Text(
                "Request new code in 00:30s",
                style: GoogleFonts.montserrat(
                  fontSize: 13,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
