import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kafi_website/utils/typography.dart';

class StackItem extends StatelessWidget {
  final String? imagePath;
  final String? name;
  const StackItem({Key? key, this.imagePath, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Image.asset(imagePath!, height: 60,width:60,),
        SizedBox(height: 4.0,),
        Text(name!, textAlign: TextAlign.center, style: sixteenBlackStyle,),
      ],)
    );
  }
}
