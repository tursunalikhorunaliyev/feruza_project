import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: const Icon(
        Icons.navigate_next,
        color: Colors.white,
      ),
    );
  }
}
