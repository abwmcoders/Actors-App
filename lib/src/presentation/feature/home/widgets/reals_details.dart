import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RealsDetailWidget extends StatelessWidget {
  const RealsDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w, bottom: 5.h),
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: RichText(
              text: TextSpan(
                text: '@',
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.white,
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25,
                ),
                children: [
                  TextSpan(
                    text: 'TheMade',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.sp,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w800,
                      height: 1.02,
                      letterSpacing: 0.25,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15.h),
          SizedBox(
            child: Text(
              'The Seagull (Anton Chekhov)\n#hollywood-english ',
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
