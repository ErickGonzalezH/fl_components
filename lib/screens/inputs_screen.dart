import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    //usar keys, ayuda a mantener una referencia
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
        'first_name' : 'Erick',
        'last_name'  : 'Gonzalez',
        'email'      : 'egonzalez31@gmail.com',
        'password'   : '123456',
        'role'       : 'Admin'
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                //Para nombre
                CustomInputField( labelText: 'Nombre', hintText: 'Nombre de usuario', formProperty: 'first_name', formValues: formValues,),
                const SizedBox( height: 30 ),
          
                //Para apellido
                CustomInputField( labelText: 'Apellido', hintText: 'Apellido de usuario', formProperty: 'last_name', formValues: formValues),
                const SizedBox( height: 30 ),
          
                //Para correo
                CustomInputField( labelText: 'Correo', hintText: 'Correo de usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                const SizedBox( height: 30 ),
          
                //Para contraseña
                CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña de usuario', obscureText: true, formProperty: 'password', formValues: formValues),
                const SizedBox( height: 30 ),


                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem( value: 'Admin',         child: Text('Admin')),
                    DropdownMenuItem( value: 'Superuser',     child: Text('Superuser')),
                    DropdownMenuItem( value: 'Developer',     child: Text('Developer')),
                    DropdownMenuItem( value: 'Jr. Developer', child: Text('Jr. Developer')),
                    
                  ],
                  onChanged: ( value ) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }, 
                  ),

          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  ),
                  onPressed: () {

                    //Desactivar teclado al presionar el boton
                    FocusScope.of(context).requestFocus( FocusNode() );

                     if ( !myFormKey.currentState!.validate() ) {
                      print('Formulario no valido');
                      return;
                     }
                      //* imprimir valores del formulario
                      print(formValues);
                  }, 
                  )
          
              ],
            ),
          )
          ),
      )
    );
  }
}

