import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasked/src/presentation/feature/splash/splach_screen.dart';

import '../shared/shared.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actor App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      builder: (context, widget) {
        ScreenUtil.init(
          context,
          designSize: const Size(428, 926),
          minTextAdapt: true,
        );
        return widget!;
      },
      home: const SplashScreen(),
    );
  }
}
