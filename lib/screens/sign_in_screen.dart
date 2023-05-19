import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/netification.dart';
import 'package:flutter_application_5/widgets/custom_textfield.dart';
import 'package:flutter_application_5/widgets/next_button.dart';
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
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
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
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 12,
                            width: 12,
                            child: Checkbox(
                              value: false,
                              onChanged: (value) {},
                              fillColor: const MaterialStatePropertyAll(
                                Color(0xFFCBCBCB),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Remenber me",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Forget password?",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: const Color(0xFFFFC33E),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 223,
                ),
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
                      ],
                    ),
                    NextButton(),
                  ],
                ),
                const SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New Member?",
                      style: GoogleFonts.montserrat(fontSize: 13),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notefication(),
                          )),
                      child: Text(
                        "Register now",
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: const Color(0xFFFFC33E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
