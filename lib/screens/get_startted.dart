import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/sign_in_screen.dart';
import 'package:flutter_application_5/widgets/custom_textfield.dart';
import 'package:flutter_application_5/widgets/next_button.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(
                  height: 42,
                ),
                Image.asset(
                  "assets/get_started.png",
                  height: 174,
                  width: 225,
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomTextfield(
                  hintText: "Full name",
                  imagePath: ("assets/user.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextfield(
                  hintText: "Valid email",
                  imagePath: ("assets/mail.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextfield(
                  hintText: "Phone number",
                  imagePath: ("assets/smartphone.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextfield(
                  hintText: "Strong Password ",
                  imagePath: "assets/lock.png",
                ),
                const SizedBox(
                  height: 17,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                        height: 12,
                        child: Checkbox(
                          value: false,
                          onChanged: (value) {},
                          fillColor:
                              const MaterialStatePropertyAll(Color(0xFFCBCBCB)),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "By checking the box you agree to our",
                        style: GoogleFonts.montserrat(
                          fontSize: 9,
                        ),
                      ),
                      Text(
                        "Terms",
                        style: GoogleFonts.montserrat(
                          fontSize: 9,
                          color: const Color(0xFFFFC33E),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "and",
                        style: GoogleFonts.montserrat(
                          fontSize: 9,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Conditions",
                        style: GoogleFonts.montserrat(
                          fontSize: 9,
                          color: const Color(0xFFFFC33E),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  "Forget password ?",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
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
                      ],
                    ),
                    const NextButton()
                  ],
                ),
                const SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a member?",
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignIn(),
                          ),
                        );
                      },
                      child: Text(
                        "Log In",
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: const Color(0xFFFFC33E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
