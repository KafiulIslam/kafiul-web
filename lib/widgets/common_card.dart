import 'package:flutter/material.dart';
import '../utils/color.dart';

class CommonCard extends StatelessWidget {
  final double? width;
  final Widget? child;
  const CommonCard({Key? key, this.width, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: white,
        boxShadow: const [
          BoxShadow(
            color: deepAssTextColor,
            offset: Offset(0, 10),
            blurRadius: 10,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: child!,
    );
  }
}
