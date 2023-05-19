import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/get_startted.dart';
import 'package:flutter_application_5/widgets/next_button.dart';
import 'package:google_fonts/google_fonts.dart';

class Enterscreen extends StatelessWidget {
  const Enterscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 163,
              ),
              Image.asset(
                "assets/image2.png",
                width: 321,
                height: 251,
              ),
              const Spacer(),
              Text(
                "Explore the\nworld easily",
                style: GoogleFonts.montserrat(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "To your desire",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 6,
                        width: 16,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Container(
                        height: 6,
                        width: 13,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFC33E),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Container(
                        height: 6,
                        width: 13,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFC33E),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GetStart(),
                      ),
                    ),
                    child: const NextButton(),
                  )
                ],
              ),
              const SizedBox(
                height: 72,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
