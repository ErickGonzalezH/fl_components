import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //Quitar el banner de debug en la app.
      debugShowCheckedModeBanner: false,

      title: 'Material App',
      
      //Codigo para la pantalla principal.
      initialRoute: AppRoutes.initialRoute,
      
      //Aqui se guardan las rutas o screens de forma dinámica.
      routes: AppRoutes.getAppRoutes(),

      //Genera rutas dinamicas que no se han registrado.
      onGenerateRoute:  AppRoutes.onGenerateRoute,

      //Tema global para la aplicacion
      theme: AppTheme.lightTheme,
    );
  }
}