import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterboilerplate/utils/styles/app_colors.dart';
import 'package:go_router/go_router.dart';

import 'router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoRouter router;

  @override
  void initState() {
    super.initState();
    router = appRouter();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, x) => MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.transparent,
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.black,
            ),
          ),
          disabledColor: neutral300,
          canvasColor: canvasColor,
          // fontFamily: GoogleFonts.jost().fontFamily,
          colorScheme: ColorScheme.fromSwatch(
            accentColor: accentColor,
          ).copyWith(
            primary: accentColor,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: accentColor,
            selectedIconTheme: const IconThemeData(color: accentColor),
            selectedLabelStyle: TextStyle(
              color: accentColor,
              fontSize: 16.sp,
            ),
            unselectedItemColor: neutral300,
            unselectedIconTheme: const IconThemeData(color: neutral300),
            unselectedLabelStyle: TextStyle(
              color: neutral300,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
      // MaterialApp.router(
      //   title: 'Flutter Boilerplate',
      //   theme: ThemeData(primarySwatch: Colors.amber),

      // )
    );
  }
}
