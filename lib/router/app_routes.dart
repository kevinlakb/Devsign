import 'package:entre_tiempos/screens/music.dart';
import 'package:entre_tiempos/screens/present_screen.dart';
import 'package:entre_tiempos/screens/tareas7_8notas/nueva_nota.dart';
import 'package:entre_tiempos/screens/work/work_screen.dart';
import 'package:flutter/material.dart';
import 'package:entre_tiempos/models/menu_options.dart';
import 'package:entre_tiempos/screens/screens.dart';

class AppRoutes {


  static const initialRoute = 'Home';




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
        route: 'Music',
        name: 'Música',
        screen: const Music(),
        icon: Icons.queue_music_rounded),
    MenuOption(
        route: 'ConcentrationScreen',
        name: 'Modo concentración',
        screen: const ConcentrationScreen(),
        icon: Icons.border_all_outlined),
    MenuOption(
        route: 'Development',
        name: 'Desarrollo',
        screen: const DevelopmentScreen(),
        icon: Icons.bug_report),

    MenuOption(route: 'NuevaNotaScreen', 
              icon: Icons.bug_report, 
              screen: const NuevaNotaScreen(),
              name: 'Nueva ' ),

             
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
    MenuOption(
        route: 'Test1',
        name: 'Test1',
        screen: const TestScreen1(),
        icon: Icons.bug_report),
    MenuOption(
        route: 'Test2',
        name: 'Test2',
        screen: const TestScreen2(),
        icon: Icons.bug_report),
    MenuOption(
        route: 'Test3',
        name: 'Test3',
        screen: const TestScreen3(),
        icon: Icons.bug_report),
    MenuOption(
        route: 'Test4',
        name: 'Test4',
        screen: const TestScreen4(),
        icon: Icons.bug_report),
    MenuOption(
        route: 'Test5',
        name: 'Test5',
        screen: const TestScreen5(),
        icon: Icons.bug_report),
    MenuOption(
        route: 'Test6',
        name: 'Test6',
        screen: const TestScreen6(),
        icon: Icons.bug_report),
    MenuOption(
        route: 'Development',
        name: 'Desarrollo',
        screen: const DevelopmentScreen(),
        icon: Icons.bug_report),
    MenuOption(
        route: 'Work',
        name: 'Trajado',
        screen: const WorkScreen(),
        icon: Icons.bug_report),
    MenuOption(
   
        route: 'NotasTareasScreen',
        name: 'NOTAS EXPOSICIÓN',
        screen: const NotasTareasScreen(),
        icon: Icons.bug_report),        
   MenuOption(
        route: 'Present',
        name: 'Present',
        screen: const PresentScreen(),
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
