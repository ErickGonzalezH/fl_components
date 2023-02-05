import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnable ? ( value ) { 
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),

         //Checkbox(
         //   value: _sliderEnable, 
         //   onChanged: ( value ) {
         //     _sliderEnable = value ?? true;
         //     setState(() {});
         //   }
         // ),
         // Switch(
         //   value: _sliderEnable, 
         //   onChanged: ( value ) => setState(() { _sliderEnable = value;})
         // ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable, 
            onChanged: ( value ) => setState(() { _sliderEnable = value ?? true;})
          ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable, 
            onChanged: ( value ) => setState(() { _sliderEnable = value;})
          ),

          //Muestra las licencias de la App
          const AboutListTile(),

          
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.seekpng.com/png/detail/56-563596_download-free-png-transparent-image-and-icon-dibujo.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

        ],
      )
    );
  }
}