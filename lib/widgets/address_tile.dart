import 'package:flutter/material.dart';
import 'package:kafi_website/utils/typography.dart';
import '../utils/color.dart';

class AddressTile extends StatelessWidget {
  final IconData? icon;
  final String? data;
  const AddressTile({Key? key, this.icon, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon!,color: white,),
      const SizedBox(width: 8.0,),
      Text(data!,style: fourteenWhiteStyle,),
    ],);
  }
}
