import 'package:flutter/material.dart';


class Nota {

  Nota({
    this.titulo,
    this.contenido,
    //this.key
  });
//Angie 
  String? titulo;
  String? contenido;
  //String? key;

  static List<Nota> misNotas = [
    Nota(titulo: 'El analfabetismo' , contenido: 'Cualidad o estado de las personas que saben leer y escribir.'),
    Nota(titulo: 'Contenido' , contenido: 'El analfabetismo en México se define como la incapacidad de las personas mayores de 15 años, para leer y escribir un recado. Se trata de un indicador en el que, a pesar de que ha habido reducciones progresivas, el avance sigue siendo lento y desigual en todo el territorio nacional.'),
    Nota(titulo: 'Tipos de analfabetismo' , contenido: 'Analfabetismo funcional y analfabetismo total'),
    
  ];  

  static void agregarnota(Nota nota){
    
    misNotas.add(nota);

  }
}