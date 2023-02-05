import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  //Mostrar alerta IOS
  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ) {
        return  CupertinoAlertDialog (
          title: const Text('titulo'),
          content: Column(
            //Controlar tamaño de columna
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox( height: 10,),
              FlutterLogo(size: 100)

            ],
          ),
          actions: [

            TextButton(
              onPressed: () => Navigator.pop( context ), 
              child: const Text('Cancelar', style: TextStyle( color: Colors.red),)
            ),

            TextButton(
              onPressed: () => Navigator.pop( context ), 
              child: const Text('Ok')
            )

          ],
        );
      }
    );
  }

  //Mostrar alerta android
  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ) {

        return AlertDialog(
          elevation: 5,
          title: const Text('titulo'),
          shape: RoundedRectangleBorder( borderRadius: BorderRadiusDirectional.circular(10) ),
          content: Column(
            //Controlar tamaño de columna
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox( height: 10,),
              FlutterLogo(size: 100)

            ],
          ),
          //Ejecutar acción
          actions: [

            TextButton(
              onPressed: () => Navigator.pop( context ), 
              child: const Text('Cancelar')
            ),

            TextButton(
              onPressed: () => Navigator.pop( context ), 
              child: const Text('Ok')
            )

          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
         child: ElevatedButton(
          //Mostrar alerta dependiendo la plataforma (IOS o ANDROID)
          onPressed: () => Platform.isAndroid 
              ? displayDialogAndroid( context )
              : displayDialogIOS( context ),

          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Mostrar alerta', style: TextStyle( fontSize: 20 )),
          ), 
          
          ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon (Icons.close),
        onPressed: () => Navigator.pop(context)
        ),
    );
  }
}