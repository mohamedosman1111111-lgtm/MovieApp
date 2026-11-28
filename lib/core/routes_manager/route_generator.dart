import 'package:flutter/material.dart';
import 'package:movie/features/main_layout/presentation/view/main_layout.dart';
import 'package:movie/features/onboarding/presentation/screens/onboarding_screen.dart';

import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    ///From Mohamed Fawzy All This routes Need To change while we working
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Splash Screen"))),
        );
      case Routes.onboardingRoute:
        return MaterialPageRoute(
          builder: (_) =>OnBoarding()
             ,
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Login Screen"))),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Register Screen"))),
        );
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("Forget Password Screen")),
          ),
        );
      case Routes.mainLayoutRoute:
        return MaterialPageRoute(
          builder: (_) =>
              MainLayout(),
        );
      case Routes.movieDetailsRoute:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Movie Details Screen"))),
        );
      case Routes.updateProfileRoute:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("Update Profile Screen")),
          ),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("No Route Found")),
        body: const Center(child: Text("No Route Found")),
      ),
    );
  }
}
