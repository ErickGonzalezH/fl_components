import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  //Metodo para animación
  void changeShape() {
            setState(() {

              // Crea un numero random
              final random = Random();

              // Genera un alto y ancho aleatorio
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              // Genera un color aleatorio
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              // Genera un diseño aleatorio
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        //Contenedor con muchas funciones (
         child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          
          // Define la duracion de la animacion
            duration: const Duration(milliseconds: 400),
            curve: Curves.fastOutSlowIn,
         ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_circle_outline, size: 35,),
      ),

    );
  }
}