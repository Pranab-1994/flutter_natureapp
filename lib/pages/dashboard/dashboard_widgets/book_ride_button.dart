import 'package:flutter/material.dart';

class BookRideButton extends StatelessWidget {
  const BookRideButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFFFE500),
      ),
      width: 400,
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 40,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 10,
      ),
      child: const Text(
        textAlign: TextAlign.center,
        "Book For A Ride Today!",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    );
  }
}
