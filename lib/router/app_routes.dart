import 'package:flutter/material.dart';
import 'package:entre_tiempos/models/menu_options.dart';
import 'package:entre_tiempos/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: initialRoute,
        name: 'Inicio',
        screen: const HomeScreen(),
        icon: Icons.home_outlined),
    MenuOption(
        route: 'Login1',
        name: 'Login 1',
        screen: const LoginScreen1(),
        icon: Icons.bug_report),
    MenuOption(
        route: 'Login2',
        name: 'Login 2',
        screen: const LoginScreen2(),
        icon: Icons.bug_report),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes
        .addAll({initialRoute: (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const LoginScreen1(),
    );
  }
}
