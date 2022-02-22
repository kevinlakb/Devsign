import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:entre_tiempos/themes/app_theme.dart';

class Login1 extends StatelessWidget {
  const Login1({Key? key}) : super(key: key);

  static final TextEditingController _namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const LoginTitle(),
          UserInput(namecontroller: _namecontroller),
          const ButtonNavigator(),
        ],
      ),
    );
  }
}

class ButtonNavigator extends StatelessWidget {
  const ButtonNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: SizedBox(
        width: 320,
        height: 50,
        child: RaisedButton(
          onPressed: () => {},
          elevation: 5,
          color: AppTheme.primary,
          child: const Text('SIGUIENTE',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}

class UserInput extends StatelessWidget {
  const UserInput({
    Key? key,
    required TextEditingController namecontroller,
  })  : _namecontroller = namecontroller,
        super(key: key);

  final TextEditingController _namecontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 80, bottom: 10, right: 20, left: 20),
        child: Center(
          child: SizedBox(
            width: 260,
            child: TextField(
              controller: _namecontroller,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintText: 'Tu nombre',
                labelText: '¿Cómo te llamas?',
                labelStyle: const TextStyle(
                  fontSize: 18,
                  color: AppTheme.primary,
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: AppTheme.primary,
                  width: 1.0,
                )),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: AppTheme.primary,
                  width: 1.0,
                )),
                suffixIcon: InkWell(
                  onTap: () => _namecontroller.clear(),
                  child: const Icon(Icons.cancel),
                ),
              ),
              keyboardType: TextInputType.name,
              maxLength: 12,
              maxLines: 1,
            ),
          ),
        ));
  }
}

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 180, bottom: 20, right: 20, left: 20),
      child: Center(
        child: Column(
          children: const <Widget>[
            Text('Hola, bienvenido a', style: TextStyle(fontSize: 20)),
            Text(
              'EntreTiempos',
              style: TextStyle(fontSize: 40, color: AppTheme.primary),
            )
          ],
        ),
      ),
    );
  }
}
