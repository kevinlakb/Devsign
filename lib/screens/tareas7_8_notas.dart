import 'package:entre_tiempos/models/note.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotasTareasScreen extends StatefulWidget {
  const NotasTareasScreen({Key? key}) : super(key: key);

  @override
  State<NotasTareasScreen> createState() => _NotasTareasScreenState();
}

class _NotasTareasScreenState extends State<NotasTareasScreen> {
  static final TextEditingController _tituloController =
      TextEditingController();
  static final TextEditingController _contenidoController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NOTAS'),
      ),
      body: Container(
        padding: const  EdgeInsets.all(20) ,
        child: ListView(
          
          children: [
            for (Nota nota in Nota.misNotas)
              ListTile(
                
                title: Text(nota.titulo! , style: const TextStyle(fontWeight: FontWeight.bold)),
                
                subtitle: Text(nota.contenido!),
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          elevation: 4,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    //height: 300,
                    color: Colors.white,
                    child: Column(
                      children: [
                        TextFormField(
                          
                          controller: _tituloController,
                          decoration:
                              const InputDecoration(
                                hintText: 'Titulo nota'
                                ),
                        ),
                        const Divider(height: 10,),
                        TextFormField(
                          controller: _contenidoController,
                          decoration:
                              const InputDecoration(hintText: 'Cuerpo Nota'),
                          maxLines: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            '¡Nota agregada correctamente!')),
                                  );
                                  Nota.agregarnota(Nota(
                                      titulo: _tituloController.text,
                                      contenido: _contenidoController.text));
                                  _tituloController.clear();
                                  _contenidoController.clear();
                                  print(Nota.misNotas.length);
                                  setState(() {});
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
                  );
                });
          }),
    );
  }
}
