import 'package:flutter/material.dart';


class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      //cambiar teclado dependiendo de lo que se pide
      keyboardType: keyboardType,
      //ocultar texto para contraseña
      obscureText: obscureText,
      //Capturar el valor ingresado
      onChanged: ( value ) {
        formValues[formProperty] = value;
      },
      //Poner instrucciones para cumplir la estructura de texto
      validator: (value) {
        if( value == null ) return 'Este campo es requerido';
        return value.length < 4 ? 'Minimo de 4 caracteres': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon( Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null : Icon ( suffixIcon ),
        icon: icon == null ? null : Icon ( icon ),
      ),
    );
  }
}