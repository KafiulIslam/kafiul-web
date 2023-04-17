import 'package:flutter/material.dart';
import 'package:kafi_website/utils/image_path.dart';
import 'package:kafi_website/utils/spacer.dart';
import 'package:kafi_website/utils/text_string.dart';
import 'package:kafi_website/utils/typography.dart';
import 'package:kafi_website/widgets/app_card.dart';
import 'package:kafi_website/widgets/component/buttons/primary_button.dart';
import 'package:kafi_website/widgets/experience_card.dart';
import 'package:kafi_website/widgets/project_card.dart';
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

    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        Expanded(child: Image.asset(webBack)),
        SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  _header(),
                  sixtyFourVSpacer,
                  _techStack(),
                  sixtyFourVSpacer,
                  _experience(),
                  sixtyFourVSpacer,
                  _projects(),
                  sixtyFourVSpacer,
                  _liveApps(),
                ],
              ),
            ),
            SizedBox(height: 64.0,),
            Divider(color: primaryColor),
            SizedBox(height: 64.0,),
            Container(height: 200,width: double.infinity,color: primaryColor,)
          ],)
        )
      ],),
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
              RichText(
                text: const TextSpan(
                  text: "Welcome to\n",
                  style: TextStyle(
                      color: black,
                      fontSize: 50,
                      fontWeight: FontWeight.w600),
                  children:   <TextSpan>[
                      TextSpan(
                        text: 'Kafiul Islam ', style: TextStyle(
                        color: primaryColor,
                        fontSize: 50,
                        fontWeight: FontWeight.w600)),
                    TextSpan(text: "World!", style: TextStyle(
                        color: black,
                        fontSize: 50,
                        fontWeight: FontWeight.w600),

                    ),
                  ],
                ),
              ),
              primaryVSpacer,
              const Text(
                'Flutter Android & iOS Developer',
                style: header2,
              ),
              sixteenVSpacer,
              const Text(
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
        const Text(
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
                  children: const [
                    StackItem(
                      imagePath: flutter,
                      name: 'Flutter',
                    ),
                    StackItem(
                      imagePath: dart,
                      name: 'Dart',
                    ),
                    StackItem(
                      imagePath: firebase,
                      name: 'Firebase',
                    ),
                    StackItem(
                      imagePath: flutterFlow,
                      name: 'FlutterFlow',
                    ),
                    StackItem(
                      imagePath: javascript,
                      name: 'Javascript',
                    ),
                    StackItem(
                      imagePath: html,
                      name: 'HTML',
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    StackItem(
                      imagePath: css,
                      name: 'CSS',
                    ),
                    StackItem(
                      imagePath: c,
                      name: 'C',
                    ),
                    StackItem(
                      imagePath: cPlus,
                      name: "C++",
                    ),
                    StackItem(
                      imagePath: github,
                      name: "GitHub",
                    ),
                    StackItem(
                      imagePath: androidStudio,
                      name: "Android\nStudio",
                    ),
                    StackItem(
                      imagePath: vsCode,
                      name: 'VS Code',
                    ),
                    StackItem(
                      imagePath: figma,
                      name: 'Figma',
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column _experience() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Experience',
          style: header1,
        ),
        sixteenVSpacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ExperienceCard(
              title: 'Flutter Developer',
              date: 'April 2023 - Present',
              companyName: 'Dowell Research Lab',
              url: 'https://dowellresearch.sg/',
              description: dowelDes,
            ),
            ExperienceCard(
              title: 'Flutter iOS & Android Developer',
              date: 'July 2022 - March 2023',
              companyName: 'BoomDevs',
              url: 'https://boomdevs.com/',
              description: boomDevsDes,
            ),
          ],
        ),
        primaryVSpacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ExperienceCard(
              title: 'Flutter iOS & Android Developer',
              date: 'March 2022 - July 2022',
              companyName: 'Pandascrow',
              url: 'https://pandascrow.io/',
              description: pandaDes,
            ),
            ExperienceCard(
              title: 'Flutter iOS & Android Developer',
              date: 'February 2022 - Present ',
              companyName: 'Upwork',
              url: 'https://www.upwork.com/freelancers/~0187ae466cfd442ad7',
              description: upworkDes,
            ),
          ],
        ),
      ],
    );
  }

  Column _projects() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Projects',
          style: header1,
        ),
        sixteenVSpacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ProjectCard(
              title: 'Batch Learn',
              url: 'https://github.com/boom-devs/batch-learn-mobile',
              description: batchLearnDes,
            ),
            ProjectCard(
              title: 'Sophia',
              url: 'https://github.com/KafiulIslam/chat_gpt',
              description: sophiaDes,
            ),
            ProjectCard(
              title: 'FitJerk',
              url: 'https://github.com/KafiulIslam/fitjerk_android',
              description: fitJerkDes,
            ),
          ],
        ),
        primaryVSpacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ProjectCard(
              title: 'Global News',
              url: 'https://github.com/KafiulIslam/online_news',
              description: newsDes,
            ),
            ProjectCard(
              title: 'WedPlan',
              url: 'https://github.com/KafiulIslam/wed_plan',
              description: wedPlanDes,
            ),
            ProjectCard(
              title: 'BMI Meter',
              url: 'https://github.com/KafiulIslam/body_mass_index',
              description: bmiDes,
            ),
          ],
        ),
      ],
    );
  }

  Column _liveApps() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Live Apps',
          style: header1,
        ),
        sixteenVSpacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AppCard(
                title: 'Batch Learn',
                downloadUrl:
                    'https://play.google.com/store/apps/details?id=com.batch_learn.axisedu',
                previewUrl: 'https://youtu.be/Wb3CuCauGJk',
                description: batchAppDes,
                image: batchIcon),
            AppCard(
                title: 'FitJerk',
                downloadUrl:
                'https://play.google.com/store/apps/details?id=com.kamoon.fitjerk',
                previewUrl: 'https://youtu.be/hU2QY7KJ0rs',
                description: fitJerkDes,
                image: fitJerkIcon),
          ],
        ),
        primaryVSpacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AppCard(
                title: 'Sophia',
                downloadUrl:
                'https://play.google.com/store/apps/details?id=com.kafi.sophia',
                previewUrl: 'https://youtu.be/Wb3CuCauGJk',
                description: sophiaAppDes,
                image: sophiaAppIcon),
            AppCard(
                title: 'Global News',
                downloadUrl:
                'https://play.google.com/store/apps/details?id=com.kafi.globalnews',
                previewUrl: 'https://youtu.be/Wb3CuCauGJk',
                description: globalNewsAppDes,
                image: newsAppIcon,
                imageSize: 100,
            ),
          ],
        ),
        primaryVSpacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AppCard(
                title: 'BMI Meter',
                downloadUrl:
                'https://play.google.com/store/apps/details?id=com.bmi.meter',
                previewUrl: 'https://youtu.be/Wb3CuCauGJk',
                description: bmiAppdes,
                image: bmiAppIcon,
              imageSize: 100,),
            AppCard(
                title: 'Weather Check',
                downloadUrl:
                'https://play.google.com/store/apps/details?id=com.weather.check.app',
                previewUrl: 'https://youtu.be/Wb3CuCauGJk',
                description: weatherAppDes,
                image: weatherAppIcon,
              imageSize: 100,),
          ],
        ),
      ],
    );
  }

}
