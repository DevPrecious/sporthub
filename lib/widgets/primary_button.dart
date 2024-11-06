import 'package:flutter/material.dart';
import 'package:sporthub/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key, this.onPressed, this.color = primaryColor, this.text = 'Get Started',
  });

  final VoidCallback? onPressed;
  final Color? color;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text ?? 'Get Started',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.sp,
        ),
      ),
    );
  }
}
