import 'package:flutter/material.dart';
import 'package:entre_tiempos/models/menu_options.dart';
import 'package:entre_tiempos/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'login1_1',
        name: 'Login 1.1',
        screen: const Login1(),
        icon: Icons.bug_report),
    MenuOption(
        route: 'login1_2',
        name: 'Login 1.2',
        screen: const Login2(),
        icon: Icons.bug_report),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Login1(),
    );
  }
}
