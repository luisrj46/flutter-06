import 'package:flutter/material.dart';
import 'package:seccion6/theme/app_theme.dart';

class CustomCardType11 extends StatelessWidget {
  const CustomCardType11({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text("Soy un titulo"),
            subtitle: Text(
                "Velit sint quis tempor magna nulla esse. Sint incididunt est ullamco esse adipisicing ullamco culpa. Non magna duis amet laboris cillum fugiat aliqua. Aliqua laborum aliquip velit ea enim. Ex reprehenderit sit qui occaecat ut est officia eu labore. Id consectetur labore elit quis irure ea Lorem. Aliqua est velit aliquip incididunt commodo officia cupidatat eu excepteur excepteur dolore eu quis eu."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                  style: TextButton.styleFrom(),
                ),
                TextButton(onPressed: () {}, child: const Text("Ok")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
