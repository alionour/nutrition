import 'package:flutter/material.dart';
import 'package:nutrition/src/app/navigator/app_navigator.dart';
import 'package:nutrition/src/app/widgets/screen_size.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppNavigator.router.routeInformationParser,
      routerDelegate: AppNavigator.router.routerDelegate,
      routeInformationProvider: AppNavigator.router.routeInformationProvider,
      title: 'Nutrition',
      builder: (ctx, child) => ScreenSize(
        child: ResponsiveWrapper.builder(child,
            maxWidth: 1800,
            minWidth: 480,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(480, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ],
            background: Container(color: const Color(0xFFF5F5F5))),
      ),
    );
  }
}
