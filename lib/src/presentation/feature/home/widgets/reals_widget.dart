import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/real_model.dart';
import 'home_widgets.dart';

class RealsWidget extends StatefulWidget {
  const RealsWidget({
    super.key, required this.realsList,
  });

  final List<RealsObject> realsList;

  @override
  State<RealsWidget> createState() => _RealsWidgetState();
}

class _RealsWidgetState extends State<RealsWidget> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ...List.generate(
          widget.realsList.length,
          (index) {
            return RealsPlayer(realsObject: widget.realsList[index],);
          },
        ),
        Positioned(
          right: 2.w,
          bottom: 30.h,
          width: 47.w,
          child: const RealsInteractiveWidget(),
        ),
        Positioned(
          left: 2.w,
          bottom: 50.h,
          child: const RealsDetailWidget(),
        ),
      ],
    );
  }
}


