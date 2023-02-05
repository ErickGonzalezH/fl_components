import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';


class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      //Cortar o adecuar el contenido
      clipBehavior: Clip.antiAlias,
      //Editar el redondeo de la tarjeta
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      //Color a la sombra de elevacion
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [

          //widget para mostrar imagen
          FadeInImage(
              image: NetworkImage( imageUrl ),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              //El boxfit hace que la imagen cubra todo el espacio posible.
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),

            if (name != null)
            Container (
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only( right: 20, top: 10, bottom: 10 ),
              child: Text( name! ),
              
              ),

        ],
      ),
    );
  }
}