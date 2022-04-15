import 'package:flutter/material.dart';

class AvatarScreen2 extends StatelessWidget {
  const AvatarScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://g2consultores.com.mx/wp-content/uploads/2014/11/21_negocios_liderazgo.png'),
      )),
    );
  }
}
