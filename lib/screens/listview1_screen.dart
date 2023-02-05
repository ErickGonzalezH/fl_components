import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  final options = const ['Kratos', 'TheWitcher', 'MasterChief','Saitama'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'ListView tipo 1' ),
      ),

      body: ListView(

        children: [
          ...options.map(
            (game) => ListTile ( 
              title: Text( game ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined), 
              )
          ).toList()

          //widget para hacer separacion
          
        ],
      )
    );
  } 
}