import 'package:entre_tiempos/models/note.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class NotasTareasScreen extends StatefulWidget {
  const NotasTareasScreen({Key? key}) : super(key: key);

  @override
  State<NotasTareasScreen> createState() => _NotasTareasScreenState();
}

class _NotasTareasScreenState extends State<NotasTareasScreen> {
 /*  static final TextEditingController _tituloController =
      TextEditingController();
  static final TextEditingController _contenidoController =
      TextEditingController(); */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NOTAS'),
      ),
      body: Stack(
        children: [
        Container(
          alignment: Alignment.topCenter,
            padding: const  EdgeInsets.only( left: 20 , right: 20 , top:10) ,
            child: const Text(
              'AGREGA TUS NOTAS PARA PARCTICAR TUS LINEAS',
              style:  TextStyle(fontStyle: FontStyle.italic)
              
            ),
        ),
        
        Container(
          padding: const  EdgeInsets.only( left: 20 , right: 20 , top:30 , bottom: 20) , 
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
        ]
      ),
      floatingActionButton: FloatingActionButton(
          
          child: const Icon(Icons.add),
          elevation: 4,
          onPressed: ()  { 

             Navigator.pushNamed(context ,  'NuevaNotaScreen' );  

          }),
    );
  }
}
