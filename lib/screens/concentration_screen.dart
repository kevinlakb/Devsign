import 'package:flutter/material.dart';

class ConcentrationScreen extends StatefulWidget {
  
  const ConcentrationScreen({Key? key}) : super(key: key);

  @override
  State<ConcentrationScreen> createState() => _ConcentrationScreenState();
}

class _ConcentrationScreenState extends State<ConcentrationScreen> {
  bool _isActived = false;
  bool _isActived2 = false;
  bool _isActived3 = false;
  bool _isActived4 = false;
  bool _isActived5 = false;
  bool _isActived6 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('CONCENTRACIÓN'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          
          children:  [
            const Image(image: AssetImage('assets/images/concen.png') , alignment: Alignment.center),
            const Divider(height: 20,),
            const Text('BlOQUEÁ TUS APLICACIONES', style: TextStyle(fontWeight: FontWeight.bold)),

            CheckboxListTile(
              title: const Text('Marcar todo'),
              value:_isActived ,
              onChanged: (bool? value){
                setState(() {
                  _isActived = value!;
                  _isActived2 = value;
                  _isActived3 = value;
                  _isActived4 = value;
                  _isActived5 = value;
                  _isActived6 = value;                  
                });
              },

            ),            
            CheckboxListTile(
              title: const Text('Facebook'),
              value:_isActived2 ,
              onChanged: (bool? value){
                setState(() {
                  _isActived2 = value!;
                });
              },

            ),
            CheckboxListTile(
              title: const Text('WhatsApp'),
              value:_isActived3 ,
              onChanged: (bool? value){
                setState(() {
                  _isActived3 = value!;
                });
              },

            ),
            CheckboxListTile(
              title: const Text('Instagram'),
              value:_isActived4 ,
              onChanged: (bool? value){
                setState(() {
                  _isActived4 = value!;
                });
              },

            ),  
            CheckboxListTile(
              title: const Text('YouTube'),
              value:_isActived5 ,
              onChanged: (bool? value){
                setState(() {
                  _isActived5 = value!;
                });
              },

            ), 
           /*  CheckboxListTile(
              title: const Text('Twitter'),
              value:_isActived5 ,
              onChanged: (bool? value){
                setState(() {
                  _isActived = value!;
                });
              },

            ), 
            CheckboxListTile(
              title: const Text('TikTok'),
              value:_isActived6 ,
              onChanged: (bool? value){
                setState(() {
                  _isActived = value!;
                });
              },

            ),         */                                                   
              
           
          ],
        ),
      )
    );
  }
}
