import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topollillo'),
        actions: [
          Container(
            //Margin es para separacion externa del elemento
            margin: const EdgeInsets.only( right: 5 ),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('TP'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://elcomercio.pe/resizer/yYmclROoHGPSp-oX7jqDkkaITe4=/1200x800/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/GMN3TTDHLVFKZG2MP6GXYAXIDA.jpg'),
         ),
      ),
    );
  }
}