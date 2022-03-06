import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.topLeft,
        width: size.width * 0.95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black87,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.star, color: Colors.white, size: 20)),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Info: ',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            const Text(
                '¡Te ayudaremos a organizar tus tareas y gestionar mejor tu tiempo, puedes agregar tus tareas según la prioridad!',
                style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.white)),
          ],
        ),
      ),
      Positioned(
          right: 0,
          top: 0,
          child: Container(
              margin: const EdgeInsets.all(10),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.red.shade900,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: const Icon(
                Icons.exit_to_app_outlined,
                size: 18,
                color: Colors.white,
              ))),
    ]);
  }
}
