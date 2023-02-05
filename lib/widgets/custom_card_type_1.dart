import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.abc, color: AppTheme.primary),
            title: Text('Primera tarjeta / card'),
            subtitle: Text('Subtitulo: este es el primer ejemplo de una tarjeta / card'),
          ),

          Padding(
            //Separar en bordes
            padding: const EdgeInsets.only( right: 5 ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                TextButton(
                 onPressed: () {},
                 child: const Text('Cancel'),
                 ),

                 TextButton(
                 onPressed: () {},
                 child: const Text('Ok')
                 ),
              ],
            ),
          )
        ],
      ),
    );
  }
}