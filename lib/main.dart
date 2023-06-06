import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_proj/screens/omar/diagnose_screen.dart';
import 'package:graduation_proj/screens/omar/result_screen.dart';
import 'package:graduation_proj/shared/api/prediction_provider.dart';
import 'package:graduation_proj/shared/styles/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PredictionProvider())],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            // You can use the library anywhere in the app even in theme
            themeMode: ThemeMode.light,
            home: child,
          );
        },
        child: const DiagnoseScreen(),
      ),
    );
    ;
  }
}
