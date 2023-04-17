import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kafi_website/utils/constantFile/launcher.dart';
import 'package:kafi_website/utils/typography.dart';
import 'package:kafi_website/widgets/common_card.dart';
import '../utils/color.dart';

class ProjectCard extends StatelessWidget {
  final String? title;
  final String? url;
  final String? description;

  const ProjectCard({Key? key, this.title, this.url, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return CommonCard(
      width: screenWidth / 3.5,
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
            const SizedBox(
              height: 16.0,
            ),
            TextButton(
                onPressed: () {
                  Launcher.launchInBrowser(url!);
                },
                child: const Text(
                  'GitHub',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                )),
            const SizedBox(
              height: 8.0,
            ),
            Text(description!, style: bodyTextStyle),
          ],
        ),
      ),
    );
  }
}
