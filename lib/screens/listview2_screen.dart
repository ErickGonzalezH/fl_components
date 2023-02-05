import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  final options = const ['Kratos', 'TheWitcher', 'MasterChief','Saitama'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'ListView tipo 2' ),
      ),

      body: ListView.separated(
          //Cuenta la cantidad de elementos en la lista 
          itemCount: options.length,
          //Builder construye un widget.
          itemBuilder: (context, index) => ListTile ( 
              title: Text( options[index] ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo), 
              onTap: () {
                final game = options[index];
                print( game );
              },
              ), 

          separatorBuilder: ( _ , __) => const Divider(), 
      
        )
    );
  } 
}
