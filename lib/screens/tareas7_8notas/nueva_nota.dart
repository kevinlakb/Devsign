import 'package:entre_tiempos/models/note.dart';
import 'package:flutter/material.dart';

class NuevaNotaScreen extends StatefulWidget {
   static final TextEditingController _tituloController =
      TextEditingController();
  static final TextEditingController _contenidoController =
      TextEditingController();
  const NuevaNotaScreen({Key? key}) : super(key: key);

  @override
  State<NuevaNotaScreen> createState() => _NuevaNotaScreenState();
}

class _NuevaNotaScreenState extends State<NuevaNotaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NUEVA NOTA'),
        ),
        body: Container(
      //height: 300,
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [
          TextFormField(
            controller: NuevaNotaScreen._tituloController,
            decoration: const InputDecoration(hintText: 'Titulo nota'),
          ),
          const Divider(
            height: 10,
          ),
          TextFormField(
            controller: NuevaNotaScreen._contenidoController,
            decoration: const InputDecoration(hintText: 'Cuerpo Nota'),
            maxLines: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('¡Nota agregada correctamente!')),
                    );
                    Nota.agregarnota(Nota(
                        titulo: NuevaNotaScreen._tituloController.text,
                        contenido: NuevaNotaScreen._contenidoController.text));
                    NuevaNotaScreen._tituloController.clear();
                    NuevaNotaScreen._contenidoController.clear();
                    print(Nota.misNotas.length);
                    setState((){});
                  },
                  child: const Text('Aceptar')),
              const SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar'))
            ],
          )
        ],
      ),
    ));
  }
}
