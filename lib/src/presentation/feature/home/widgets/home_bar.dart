import 'package:flutter/material.dart';

import '../../../../core/constants/constant.dart';


class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 9 * size.height / 100,
      child: SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Discover",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Image.asset(AssetsConstants.search)
            ],
          ),
        ),
      ),
    );
  }
}
