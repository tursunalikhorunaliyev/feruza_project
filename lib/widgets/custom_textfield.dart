import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final String imagePath;
  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFC4C4C4).withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 22, right: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 236,
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Image.asset(
              imagePath,
              height: 24,
              width: 24,
            ),
          ],
        ),
      ),
    );
  }
}
