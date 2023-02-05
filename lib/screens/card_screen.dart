import 'package:flutter/material.dart';
import '../widgets/widgets.dart';



class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),

      body: ListView(
        //padding es para separacion arriba o abajo
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        children: const [

          CustomCardType1(),
          //Sizebox es para añadir una separacion entre tarjetas
          SizedBox(height: 20),
          CustomCardType2( imageUrl: 'https://ipfs.pixura.io/ipfs/QmUues6qhkbptjxwBJqk4Nr8WfYvUBoEUA7wSsGrSFcLxW/CthulhuNrThreeSR.jpg'),
          SizedBox(height: 20),
          CustomCardType2( imageUrl: 'https://static.wikia.nocookie.net/ficcion-sin-limites/images/2/28/Azathoth.jpg/revision/latest?cb=20220220211517&path-prefix=es'),
          SizedBox(height: 20),
          CustomCardType2( imageUrl: 'https://socialecologies.files.wordpress.com/2022/11/nyarlathotep_2.png'),
          SizedBox(height: 20),
          CustomCardType2(name: 'Dioses cósmicos.', imageUrl: 'https://i.pinimg.com/originals/28/c5/8e/28c58efa2a62600149dc56d000345328.jpg'),
          SizedBox(height: 50)

        ],
      )
    );
  }
}

