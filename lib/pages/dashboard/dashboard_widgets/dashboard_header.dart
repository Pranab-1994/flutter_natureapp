import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Awesome',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xFF6E7A76),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Places',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xFF9E00FF),
                fontSize: 48,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFF9E00FF),
          ),
        ),
      ],
    );
  }
}
