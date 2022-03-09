import 'package:flutter/material.dart';

class AppBarAction extends StatefulWidget {
  const AppBarAction({
    Key? key,
    //required int state,
  }) : //_state = state,
        super(key: key);

  @override
  State<AppBarAction> createState() => _AppBarActionState();
}

class _AppBarActionState extends State<AppBarAction> {
  static int statePriority = 4;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: InkWell(
        child: Container(
          //duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.only(right: 10),
          height: 22,
          width: size.width * 0.21,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onTap: () {
          setState(() {
            if (statePriority < 5) {
              statePriority++;
            }
            if (statePriority == 5) {
              statePriority = 0;
            }
          });
        },
      ),
    );
  }
}
