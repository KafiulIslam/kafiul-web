import 'package:flutter/material.dart';
import 'package:kafi_website/utils/image_path.dart';
import 'package:kafi_website/utils/spacer.dart';
import 'package:kafi_website/utils/text_string.dart';
import 'package:kafi_website/utils/typography.dart';
import 'package:kafi_website/widgets/address_tile.dart';
import 'package:kafi_website/widgets/app_card.dart';
import 'package:kafi_website/widgets/component/buttons/primary_button.dart';
import 'package:kafi_website/widgets/experience_card.dart';
import 'package:kafi_website/widgets/project_card.dart';
import 'package:kafi_website/widgets/reach_button.dart';
import 'package:kafi_website/widgets/stack_item.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../../utils/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'utbH26hlTRA',
    autoPlay: true,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );

  @override
  Widget build(BuildContext context) {

    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1530) {
        return Scaffold(
          body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        _headerForLargeScreen(),
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
                  _footer(),
                ],
              )),
          // Stack(
          //   children: [
          //     Image.asset(
          //       webBack,
          //       height: screenHeight,
          //       width: screenWidth,
          //     ),
          //
          //   ],
          // ),
        );
      } else {
        return Scaffold(
          body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        _headerForSmallScreen(),
                        sixtyFourVSpacer,
                        _techStack(),
                        sixtyFourVSpacer,
                        _experience(),
                        sixtyFourVSpacer,
                        _projects(),
                        sixtyFourVSpacer,
                        _liveAppsForSmallScreen(),
                      ],
                    ),
                  ),
                  _footer(),
                ],
              )),
          // Stack(
          //   children: [
          //     Image.asset(
          //       webBack,
          //       height: screenHeight,
          //       width: screenWidth,
          //     ),
          //
          //   ],
          // ),
        );
      }
    }));
  }

  Row _headerForLargeScreen() {

     final double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: screenWidth / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Welcome to\n",
                  style: TextStyle(
                      color: black, fontSize: 50, fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Kafiul Islam ',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 50,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                      text: "World!",
                      style: TextStyle(
                          color: black,
                          fontSize: 50,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
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
              const Row(
                children: [
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
        SizedBox(
          height: 300,
          width: screenWidth / 3,
          child: YoutubePlayer(
            controller: _controller,
            //aspectRatio: 16 / 9,
          ),
        ),
        //Image.asset(profilePic, width: screenWidth / 2.5),
      ],
    );
  }

  Row _headerForSmallScreen() {

    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: screenWidth / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Welcome to\n",
                  style: TextStyle(
                      color: black, fontSize: 50, fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Kafiul Islam ',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 50,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                      text: "World!",
                      style: TextStyle(
                          color: black,
                          fontSize: 50,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
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
              const PrimaryButton(
                  icon: Icons.download_for_offline_sharp,
                  buttonTitle: 'Download Resume',
                  url: resume),
            ],
          ),
        ),
        SizedBox(
      height: 300,
      width: screenWidth / 3,
      child: YoutubePlayer(
      controller: _controller,
      //aspectRatio: 16 / 9,
      ),
    ),
       // Image.asset(profilePic, width: screenWidth / 2.5),
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
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                      imagePath: node,
                      name: 'Node js',
                    ),
                    StackItem(
                      imagePath: express,
                      name: 'Express js',
                    ),
                    StackItem(
                      imagePath: mongo,
                      name: 'MongoDB',
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StackItem(
                      imagePath: javascript,
                      name: 'Javascript',
                    ),
                    StackItem(
                      imagePath: html,
                      name: 'HTML',
                    ),
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
        Text(
          'Experience',
          style: header1,
        ),
        sixteenVSpacer,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
        Text(
          'Projects',
          style: header1,
        ),
        sixteenVSpacer,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
        Text(
          'Live Apps',
          style: header1,
        ),
        sixteenVSpacer,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
              imageSize: 150,
            ),
          ],
        ),
        primaryVSpacer,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppCard(
              title: 'BMI Meter',
              downloadUrl:
                  'https://play.google.com/store/apps/details?id=com.bmi.meter',
              previewUrl: 'https://youtu.be/Wb3CuCauGJk',
              description: bmiAppdes,
              image: bmiAppIcon,
              imageSize: 150,
            ),
            AppCard(
              title: 'Weather Check',
              downloadUrl:
                  'https://play.google.com/store/apps/details?id=com.weather.check.app',
              previewUrl: 'https://youtu.be/Wb3CuCauGJk',
              description: weatherAppDes,
              image: weatherAppIcon,
              imageSize: 150,
            ),
          ],
        ),
      ],
    );
  }

  Column _footer() {
    return Column(
      children: [
        const SizedBox(
          height: 64.0,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AddressTile(
                      icon: Icons.email_outlined,
                      data: 'kafiulislam135@gmail.com',
                    ),
                    sixteenVSpacer,
                    const AddressTile(
                      icon: Icons.phone,
                      data: '+8801628924397',
                    ),
                    sixteenVSpacer,
                    AddressTile(
                      icon: MdiIcons.whatsapp,
                      data: '+8801628924397',
                    ),
                    sixteenVSpacer,
                    const AddressTile(
                      icon: Icons.my_location,
                      data: 'Bogura, Rajshahi, Bangladesh',
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 32.0, horizontal: 64.0),
                child: Container(
                  width: 2.0,
                  color: white,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Reach Me -',
                    style: fourteenWhiteStyle,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  ReachButton(
                      icon: MdiIcons.linkedin,
                      url:
                          'https://www.linkedin.com/in/md-kafiul-islam-902229230/'),
                  ReachButton(
                      icon: MdiIcons.twitter,
                      url: 'https://twitter.com/KafiulIslam3'),
                  ReachButton(
                      icon: MdiIcons.github,
                      url: 'https://github.com/KafiulIslam'),
                  ReachButton(
                      icon: MdiIcons.quora,
                      url: 'https://www.quora.com/profile/Kafiul-Islam-1'),
                  const ReachButton(
                      icon: Icons.facebook,
                      url: 'https://www.facebook.com/mrkafi1/'),
                  ReachButton(
                      icon: MdiIcons.youtube,
                      url:
                          'https://www.youtube.com/channel/UCdrNnxwLOX5UwmzLa-gGLqA'),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Column _liveAppsForSmallScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Live Apps',
          style: header1,
        ),
        sixteenVSpacer,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppCard(
              title: 'Batch Learn',
              downloadUrl:
                  'https://play.google.com/store/apps/details?id=com.batch_learn.axisedu',
              previewUrl: 'https://youtu.be/Wb3CuCauGJk',
              description: batchAppDes,
              image: batchIcon,
              isLarge: false,
            ),
            AppCard(
                title: 'FitJerk',
                downloadUrl:
                    'https://play.google.com/store/apps/details?id=com.kamoon.fitjerk',
                previewUrl: 'https://youtu.be/hU2QY7KJ0rs',
                description: fitJerkDes,
                image: fitJerkIcon,
                isLarge: false),
          ],
        ),
        primaryVSpacer,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppCard(
                title: 'Sophia',
                downloadUrl:
                    'https://play.google.com/store/apps/details?id=com.kafi.sophia',
                previewUrl: 'https://youtu.be/Wb3CuCauGJk',
                description: sophiaAppDes,
                image: sophiaAppIcon,
                isLarge: false),
            AppCard(
                title: 'Global News',
                downloadUrl:
                    'https://play.google.com/store/apps/details?id=com.kafi.globalnews',
                previewUrl: 'https://youtu.be/Wb3CuCauGJk',
                description: globalNewsAppDes,
                image: newsAppIcon,
                imageSize: 150,
                isLarge: false),
          ],
        ),
        primaryVSpacer,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppCard(
                title: 'BMI Meter',
                downloadUrl:
                    'https://play.google.com/store/apps/details?id=com.bmi.meter',
                previewUrl: 'https://youtu.be/Wb3CuCauGJk',
                description: bmiAppdes,
                image: bmiAppIcon,
                imageSize: 150,
                isLarge: false),
            AppCard(
                title: 'Weather Check',
                downloadUrl:
                    'https://play.google.com/store/apps/details?id=com.weather.check.app',
                previewUrl: 'https://youtu.be/Wb3CuCauGJk',
                description: weatherAppDes,
                image: weatherAppIcon,
                imageSize: 150,
                isLarge: false),
          ],
        ),
      ],
    );
  }

}
