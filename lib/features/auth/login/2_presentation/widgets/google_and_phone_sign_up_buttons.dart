import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GoogleAndPhoneSignInButtons extends StatelessWidget {
  const GoogleAndPhoneSignInButtons({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(5),
              ),
              width: double.infinity,
              height: height * 0.07,
            ),
          ),
          const Gap(10),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF4477C2),
                borderRadius: BorderRadius.circular(5),
              ),
              width: double.infinity,
              height: height * 0.07,
            ),
          ),
        ],
      ),
    );
  }
}
