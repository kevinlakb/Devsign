import 'package:entre_tiempos/models/menu_options.dart';
import 'package:flutter/material.dart';
import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:entre_tiempos/router/app_routes.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('entre_tiempos.com'),
            accountEmail: Text('entre_tiempos@gmail.com'),
            currentAccountPicture: CircleAvatar(
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
          Container(
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
