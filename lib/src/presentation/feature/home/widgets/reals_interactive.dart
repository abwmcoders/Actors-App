import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constant.dart';
import '../../../../shared/shared.dart';
import 'home_widgets.dart';



class RealsInteractiveWidget extends StatelessWidget {
  const RealsInteractiveWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 65.h,
          width: 45.w,
          margin: EdgeInsets.only(bottom: 25.h),
          child: Stack(
            children: [
              SizedBox(
                height: 60.h,
                width: 47.w,
                child: Image.asset(
                  AssetsConstants.user,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 5,
                right: 5,
                child: Container(
                  height: 27.h,
                  width: 27.w,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: Palette.secondaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        RealsInteractiveIcons(
          onTap: () {},
          icon: AssetsConstants.like,
          text: '256',
          gap: 11.h,
        ),
        RealsInteractiveIcons(
          onTap: () {},
          icon: AssetsConstants.comment,
          text: '10',
          gap: 13.h,
        ),
        RealsInteractiveIcons(
          onTap: () {},
          icon: AssetsConstants.share,
          text: '30',
          gap: 8.h,
        ),
      ],
    );
  }
}
