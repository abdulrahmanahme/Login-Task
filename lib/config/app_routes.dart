import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import '../features/login/presentation/manager/bloc/login_bloc.dart';
import '../features/login/presentation/pages/home_page.dart';
import '../features/login/presentation/pages/login_page.dart';

class AppRoutes {
  static const String initialRoute = "/LoginPage";
  static const String homePage = "/homePage";
}

class Routes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    var args = routeSettings.arguments;
    switch (routeSettings.name) {
      case AppRoutes.initialRoute:
        return _animateRouteBuilder(BlocProvider(
          create: (context) => LoginBloc(),
          child: const LoginPage(),
        ));

      case AppRoutes.homePage:
        return _animateRouteBuilder(
          const HomePage(),
        );

      default:
        return _animateRouteBuilder(const Scaffold(
          body: Center(
            child: Text('No Route Found'),
          ),
        ));
    }
  }

  static _animateRouteBuilder(
    Widget widget, {
    PageRouteAnimation? pageRouteAnimation,
    Duration? duration,
  }) =>
      buildPageRoute(
          widget,
          pageRouteAnimation ?? PageRouteAnimation.SlideBottomTop,
          duration ?? 50.milliseconds);
}
