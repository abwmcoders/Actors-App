import 'package:flutter/material.dart';

import '../../../core/constants/constant.dart';
import '../../../shared/shared.dart';

class BottomNavRenderer extends StatefulWidget {
  const BottomNavRenderer({super.key});

  @override
  State<BottomNavRenderer> createState() => _BottomNavRendererState();
}

class _BottomNavRendererState extends State<BottomNavRenderer> {
  int _page = 0;

  void onPageChanged(int index) {
    setState(() {
      _page = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: IndexedStack(
          index: _page,
          children: UiConstants.bottomTabBarItems,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _page,
          onTap: onPageChanged,
          backgroundColor: Palette.secondaryColor,
          items: [
            BottomNavigationBarItem(
              label: "",
              activeIcon: Image.asset(
                AssetsConstants.home,
                color: Palette.primaryColor,
              ),
              icon: Image.asset(
                AssetsConstants.home,
                color: Palette.lightGreyColor,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              activeIcon: Image.asset(
                AssetsConstants.message,
                color: Palette.primaryColor,
              ),
              icon: Image.asset(
                AssetsConstants.message,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              activeIcon: Image.asset(
                AssetsConstants.add,
              ),
              icon: Image.asset(
                AssetsConstants.add,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              activeIcon: Image.asset(
                AssetsConstants.comment,
                color: Palette.primaryColor,
              ),
              icon: Image.asset(
                AssetsConstants.comment,
                color: Palette.lightGreyColor,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              activeIcon: Image.asset(
                AssetsConstants.profile,
                color: Palette.primaryColor,
              ),
              icon: Image.asset(
                AssetsConstants.profile,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
