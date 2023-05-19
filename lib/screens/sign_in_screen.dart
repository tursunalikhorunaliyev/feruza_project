import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 42,
          bottom: 34,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/sign_in.png",
              height: 174,
              width: 223,
            ),
            const SizedBox(
              height: 109,
            ),
            const CustomTextfield(
              hintText: "Enter your emile",
              imagePath: "assets/mail.png",
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextfield(
              hintText: "Password",
              imagePath: "assets/lock.png",
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                  fillColor: MaterialStatePropertyAll(
                    const Color(0xFFCBCBCB),
                  ),
                ),
                Text(
                  "Remenber me",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
