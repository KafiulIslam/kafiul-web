import 'package:flutter/material.dart';
import 'package:kafi_website/utils/color.dart';
import 'package:kafi_website/utils/constantFile/launcher.dart';
import 'package:kafi_website/utils/typography.dart';
import 'package:url_launcher/url_launcher.dart';

class PrimaryButton extends StatelessWidget {
  final IconData? icon;
  final String? buttonTitle;
  final String? url;

  const PrimaryButton({Key? key, this.icon, this.buttonTitle, this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Launcher.launchInBrowser(url!);
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                primaryColor,
              ],
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon!,
                color: white,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                buttonTitle!,
                style: sixteenWhiteStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
