import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/resources/theme_manager.dart';
import 'core/routes_manager/route_generator.dart';
import 'core/routes_manager/routes.dart';

void main()async {
WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isSeen = prefs.getBool('isSeen') ?? false;
  runApp( MyApp(isSeen:isSeen,));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key,required this.isSeen});
  final bool isSeen;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.lightTheme,
        onGenerateRoute: RouteGenerator.getRoute,
        //todo change in to login late
        initialRoute: isSeen?Routes.mainLayoutRoute :Routes.onboardingRoute,
      ),
    );
  }
}
