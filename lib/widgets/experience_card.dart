import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kafi_website/utils/constantFile/launcher.dart';
import 'package:kafi_website/utils/spacer.dart';
import 'package:kafi_website/utils/typography.dart';
import 'package:kafi_website/widgets/common_card.dart';
import '../utils/color.dart';

class ExperienceCard extends StatelessWidget {
  final String? title;
  final String? date;
  final String? companyName;
  final String? url;
  final String? description;
  const ExperienceCard({Key? key, this.title, this.date, this.companyName, this.url, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return CommonCard(
      width: screenWidth / 2.5,
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: TextStyle(
              fontSize: 32.0,
              color: black,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4.0,),
          RichText(
            text: TextSpan(
              text: date!,
              style: const TextStyle(
                  color: primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
              children:   <TextSpan>[
                const TextSpan(
                    text: ' | '),
                TextSpan(text: companyName!, style: const TextStyle(
                    decoration: TextDecoration.underline,
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Launcher.launchInBrowser(url!);
                      }
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0,),
          Text(description!, style: bodyTextStyle),
        ],
      ),
    ),);
  }
}
