import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_proj/result.dart';
import 'package:graduation_proj/screens/about_us.dart';
import 'package:graduation_proj/screens/profile_screen.dart';
import 'package:graduation_proj/screens/result_screen.dart';
import 'package:graduation_proj/shared/styles/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: lightTheme,
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          themeMode: ThemeMode.light,
          home: child,
        );
      },
      child: const ResultScreens(),
    );
  }
}
