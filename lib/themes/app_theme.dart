import 'package:flutter/material.dart';



class AppTheme {

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color primario
        primaryColor: Colors.indigo,

        //AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 5,
        ),

        //TextButton theme
        textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom( primary: primary ),
        ),

        //FloatingActionsButtons theme
        floatingActionButtonTheme: const FloatingActionButtonThemeData (
          backgroundColor: primary,
          elevation: 5
          ),

        //ElevatedButtons theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            shape: const StadiumBorder(),
            elevation: 0
          ),
        ),


        //Inputdecoration theme
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle( color : primary ),
          
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary ),
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary ),
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
          ),

          //Inputs sin foco y esten habilitados
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
          ),

        )




      );

}