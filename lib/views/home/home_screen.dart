import 'package:flutter/material.dart';
import 'package:kafi_website/utils/image_path.dart';
import 'package:kafi_website/utils/spacer.dart';
import 'package:kafi_website/utils/text_string.dart';
import 'package:kafi_website/utils/typography.dart';
import 'package:kafi_website/widgets/component/buttons/primary_button.dart';
import 'package:kafi_website/widgets/stack_item.dart';

import '../../utils/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              _header(),
              primaryVSpacer,
              _techStack(),
            ],
          ),
        ),
      ),
    ));
  }

  Row _header() {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: screenWidth / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                welcome,
                style: header1,
              ),
              primaryVSpacer,
              Text(
                'Flutter Android & iOS Developer',
                style: header2,
              ),
              sixteenVSpacer,
              Text(
                bio,
                style: bodyTextStyle,
              ),
              sixteenVSpacer,
              Row(
                children: const [
                  PrimaryButton(
                    icon: Icons.thumb_up,
                    buttonTitle: 'Hire Me',
                    url: linkedIn,
                  ),
                  primaryHSpacer,
                  PrimaryButton(
                      icon: Icons.download_for_offline_sharp,
                      buttonTitle: 'Download Resume',
                      url: resume),
                ],
              ),
            ],
          ),
        ),
        Image.asset(profilePic, width: screenWidth / 2.5),
      ],
    );
  }

  Column _techStack() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'My Tech Stack',
          style: header1,
        ),
        sixteenVSpacer,
        Card(
          elevation: 5,
          color: white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  StackItem(imagePath: flutter, name: 'Flutter',),
                  StackItem(imagePath: dart, name: 'Dart',),
                  StackItem(imagePath: firebase, name: 'Firebase',),
                  StackItem(imagePath: flutterFlow, name: 'FlutterFlow',),
                  StackItem(imagePath: javascript, name: 'Javascript',),
                  StackItem(imagePath: html, name: 'HTML',),
                ],),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [StackItem(imagePath: css, name: 'CSS',),
                  StackItem(imagePath: c, name: 'C',),
                  StackItem(imagePath: cPlus, name: "C++",),
                  StackItem(imagePath: github, name: "GitHub",),
                  StackItem(imagePath: androidStudio, name:  "Android\nStudio",),
                  StackItem(imagePath: vsCode, name: 'VS Code',),
                  StackItem(imagePath: figma, name: 'Figma',)],)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
