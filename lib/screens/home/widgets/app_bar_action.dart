import 'package:flutter/material.dart';

class AppBarAction extends StatelessWidget {
  const AppBarAction({
    Key? key,
    //required int state,
  }) : //_state = state,
        super(key: key);

  //final int _state;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        //duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.all(10),
        height: 20,
        width: size.width * 0.21,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
