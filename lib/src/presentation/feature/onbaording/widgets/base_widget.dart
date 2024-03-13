import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/animation/page_transition.dart';
import '../../../../shared/shared.dart';
import '../../nav/nav.dart';



class BaseWidget extends StatelessWidget {
  const BaseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "For actors, directors, and everyone in-between",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Palette.primaryColor,
              ),
            ),
            SizedBox(height: 30.h),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Palette.lightGreyColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Start exploring'),
                ),
                Expanded(
                  child: Divider(
                    color: Palette.lightGreyColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            AppButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  PreviewSlideRoute(
                      preview: const BottomNavRenderer(), duration: 950),
                );
              },
              title: "Explore as an actor",
            ),
            SizedBox(height: 20.h),
            AppButton(
              onPressed: () {},
              isFilled: false,
              title: "Explore as an actor",
            ),
          ],
        ),
      ),
    );
  }
}
