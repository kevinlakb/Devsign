import 'package:flutter/material.dart';
import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:entre_tiempos/router/app_routes.dart';
import 'package:entre_tiempos/screens/login_screen1.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    final username = LoginScreen1.getname();    
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
           UserAccountsDrawerHeader(
            accountName: Text(username),
            accountEmail: const Text('entre_tiempos@gmail.com'),
            currentAccountPicture: const  CircleAvatar(
                child: ClipOval(
              child: Image(
                image: AssetImage(
                    'assets/images/blank-profile-picture-973460_960_720.png'),
              ),
            )),
            decoration: BoxDecoration(
              color: AppTheme.primary,
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/paisaje-montana-degradado_23-2149159770.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: double.maxFinite,
            child: ListView.builder(
                itemBuilder: (context, i) => ListTile(
                      leading:
                          Icon(menuOptions[i].icon, color: AppTheme.primary),
                      title: Text(menuOptions[i].name),
                      onTap: () {
                        Navigator.pushNamed(context, menuOptions[i].route);
                      },
                    ),
                itemCount: menuOptions.length),
          )
        ],
      ),
    );
  }
}
