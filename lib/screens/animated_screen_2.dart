import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen2 extends StatefulWidget {
  const AnimatedScreen2({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen2> createState() => _AnimatedScreen2State();
}

class _AnimatedScreen2State extends State<AnimatedScreen2> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void changeShape() {
    // Create a random number generator.
    final random = Random();

    // Generate a random width and height.
    _width = random.nextInt(300).toDouble() + 10;
    _height = random.nextInt(300).toDouble() + 10;

    // Generate a random color.
    _color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );

    // Generate a random border radius.
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 15);
    setState(
      () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated screen'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_filled_outlined),
        onPressed: changeShape,
      ),
    );
  }
}
