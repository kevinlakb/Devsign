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
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        //duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.only(right: 10),
        height: 22,
        width: size.width * 0.21,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
