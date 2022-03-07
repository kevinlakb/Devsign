import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:entre_tiempos/screens/home/widgets/widgets.dart';
import 'package:entre_tiempos/screens/login_screen1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isCalOpen = false;
  double y0ffset = -340;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final username = LoginScreen1.getname();
    //double slide = -450;
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        backgroundColor: AppTheme.bgWhite,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon:
                    const Icon(Icons.menu, color: AppTheme.primary, size: 28));
          },
        ),
        actions: [
          Row(
            children: [
              isCalOpen
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isCalOpen = false;
                          y0ffset = -size.height * 0.4;
                        });
                      },
                      icon: const Icon(Icons.calendar_today, size: 25),
                      color: AppTheme.primary,
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          isCalOpen = true;
                          y0ffset = 0;
                        });
                      },
                      icon: const Icon(Icons.calendar_today, size: 25),
                      color: AppTheme.primary,
                    ),
              const SizedBox(
                width: 20,
              )
            ],
          )
        ],
        title: Text('Hola!, $username',
            style: const TextStyle(
                fontFamily: 'Roboto', fontSize: 22, color: AppTheme.primary)),
        toolbarHeight: 60,
        elevation: 0,
      ),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Calendar(y0ffset: isCalOpen),
            AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                transform: Matrix4.translationValues(0, y0ffset, 0),
                child: Column(
                  children: [
                    const Info(),
                    Tasks(),
                  ],
                )),
          ]),
      floatingActionButton: Container(
        height: size.width * 0.15,
        width: size.width * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromRGBO(68, 43, 134, 0.9),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(2.0, 3.0), // changes position of shadow
            ),
          ],
        ),
        child: InkWell(
          splashColor: const Color.fromARGB(100, 255, 255, 255),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: size.width * 0.1,
            ),
          ),
          onTap: () => {
            Navigator.pushNamed(context, 'Development'),
            // showDialog(
            //     context: context,
            //     builder: (contex) => Positioned(
            //           left: 0,
            //           bottom: 0,
            //           child: AnimatedContainer(
            //             duration: const Duration(milliseconds: 1000),
            //             height: size.height * 0.5,
            //             width: double.infinity,
            //             decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //         )),
          },
        ),
      ),
    );
  }
}
