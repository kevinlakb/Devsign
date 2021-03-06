import 'package:entre_tiempos/screens/concentration_screen.dart';
import 'package:entre_tiempos/screens/music_screen.dart';
import 'package:entre_tiempos/screens/progress_screen.dart';
import 'package:flutter/material.dart';
import 'package:entre_tiempos/models/menu_options.dart';
import 'package:entre_tiempos/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Login1';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'Home',
        name: 'Inicio',
        screen: const HomeScreen(),
        icon: Icons.home_outlined),
    MenuOption(
        route: 'CompletedTaks',
        name: 'Tareas terminadas',
        screen: const CompletedTasksScreen(),
        icon: Icons.check_box_outlined),
    MenuOption(
        route: 'ProgressScreen',
        name: 'Progreso',
        screen: const ProgressScreen(),
        icon: Icons.stacked_bar_chart),
    MenuOption(
        route: 'MusicScreen',
        name: 'Música',
        screen: const MusicScreen(),
        icon: Icons.queue_music_rounded),
    MenuOption(
        route: 'ConcentrationScreen',
        name: 'Modo concentración',
        screen: const ConcentrationScreen(),
        icon: Icons.border_all_outlined),
  ];
  static final menuOptionsHidden = <MenuOption>[
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
    MenuOption(
        route: 'Test',
        name: 'Test',
        screen: const TestScreen0(),
        icon: Icons.bug_report),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes
        .addAll({initialRoute: (BuildContext context) => const LoginScreen1()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    for (final option in menuOptionsHidden) {
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
