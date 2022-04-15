import 'package:flutter/material.dart';

import 'package:seccion6/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType11(),
            SizedBox(
              height: 10,
            ),
            CustomCardType22(
              imageUrl:
                  'https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg',
              subTitle: "Un hemoso Paisaje",
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType22(
              imageUrl:
                  'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType22(
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg',
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
