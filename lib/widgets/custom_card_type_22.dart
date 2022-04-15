import 'package:flutter/material.dart';
import 'package:seccion6/theme/app_theme.dart';

class CustomCardType22 extends StatelessWidget {
  const CustomCardType22({Key? key, required this.imageUrl, this.subTitle})
      : super(key: key);

  final String imageUrl;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.2),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/loading/jar-loading.gif'),
          width: double.infinity,
          height: 260,
          fit: BoxFit.cover,
          // fadeInDuration: Duration(microseconds: 300),
        ),
        if (subTitle != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(subTitle!),
          )
      ]),
    );
  }
}
