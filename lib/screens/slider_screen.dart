import 'package:flutter/material.dart';
import 'package:seccion6/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("slider & Check"),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 20,
              max: 400,
              value: _sliderValue,
              activeColor: AppTheme.primary,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                      print(value);
                    }
                  : null,
            ),
            // Checkbox(
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       _sliderEnabled = value ?? true;
            //       setState(() {});
            //     }),
            // Switch(
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       _sliderEnabled = value;
            //       setState(() {});
            //     }),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Checkbox'),
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value ?? true;
                  setState(() {});
                }),
            SwitchListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Checkbox'),
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value;
                  setState(() {});
                }),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://pngimage.net/wp-content/uploads/2018/05/batman-vector-png-4.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            const SizedBox(height: 20)
          ],
        ));
  }
}
