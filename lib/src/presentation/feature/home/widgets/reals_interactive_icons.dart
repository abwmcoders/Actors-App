import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RealsInteractiveIcons extends StatelessWidget {
  const RealsInteractiveIcons({
    super.key,
    required this.onTap,
    required this.icon,
    this.text,
    this.gap,
  });
  final GestureTapCallback onTap;
  final String icon;
  final String? text;
  final double? gap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(icon),
          const SizedBox(height: 5),
          if (text != null)
            SizedBox(
              height: 30.h,
              child: Text(
                text!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w400,
                  // height: 0.14,
                  letterSpacing: 0.20,
                ),
              ),
            ),
          if (gap != null) SizedBox(height: gap),
        ],
      ),
    );
  }
}
