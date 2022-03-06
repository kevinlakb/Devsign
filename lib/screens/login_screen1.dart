import 'package:flutter/material.dart';
import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:entre_tiempos/models/user.dart';

class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({Key? key}) : super(key: key);
  static final User datauser = User();
  static final TextEditingController _namecontroller = TextEditingController();

  static String getname() {
    datauser.name = _namecontroller.text;
    return datauser.getname;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          LoginTitle(namecontroller: _namecontroller),
          const Button(),
        ],
      ),
    );
  }
}

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    Key? key,
    required TextEditingController namecontroller,
  })  : _namecontroller = namecontroller,
        super(key: key);

  final TextEditingController _namecontroller;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final padding = MediaQuery.of(context).padding;
    // final safeHeight = size.height - padding.top - padding.bottom;
    return Container(
      margin: EdgeInsets.only(
          top: size.height * 0.2, bottom: 0, right: 20, left: 20),
      child: Center(
        child: Column(
          children: <Widget>[
            const Text('Hola, bienvenido a',
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
            const Text('EntreTiempos',
                style: TextStyle(fontSize: 40, color: AppTheme.primary),
                textAlign: TextAlign.center),
            InputUser(namecontroller: _namecontroller)
          ],
        ),
      ),
    );
  }
}

class InputUser extends StatelessWidget {
  const InputUser({
    Key? key,
    required TextEditingController namecontroller,
  })  : _namecontroller = namecontroller,
        super(key: key);

  final TextEditingController _namecontroller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: SizedBox(
        width: size.width * 0.6,
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
            counterText: '',
            suffixIcon: InkWell(
              onTap: () => _namecontroller.clear(),
              child: const Icon(
                Icons.cancel,
                color: Colors.grey,
              ),
            ),
          ),
          keyboardType: TextInputType.name,
          maxLength: 12,
          maxLines: 1,
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      bottom: MediaQuery.of(context).viewInsets.bottom + size.height * 0.04,
      left: size.width * 0.1,
      right: size.width * 0.1,
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppTheme.primary),
            elevation: MaterialStateProperty.all<double>(5),
          ),
          child: const Text('SIGUIENTE',
              style: TextStyle(fontSize: 20, color: Colors.white)),
          onPressed: () => {
            Navigator.pushNamed(context, 'Login2'),
          },
        ),
      ),
    );
  }
}
