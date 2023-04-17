import 'package:flutter/material.dart';
import 'package:kafi_website/utils/constantFile/launcher.dart';

import '../utils/color.dart';

class ReachButton extends StatelessWidget {
  final String? url;
  final IconData? icon;
  const ReachButton({Key? key, this.icon, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      Launcher.launchInBrowser(url!);
    }, icon: Icon(icon!, color: white,) );
  }
}
