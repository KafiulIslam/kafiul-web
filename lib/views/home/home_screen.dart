import 'package:flutter/material.dart';
import 'package:kafi_website/utils/color.dart';
import 'package:kafi_website/utils/image_path.dart';
import 'package:kafi_website/utils/spacer.dart';
import 'package:kafi_website/utils/text_string.dart';
import 'package:kafi_website/utils/typography.dart';
import 'package:kafi_website/widgets/component/buttons/primary_button.dart';


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
              Text(welcome,style: header1,),
              primaryVSpacer,
              Text('Flutter Android & iOS Developer',style: header2,),
              sixteenVSpacer,
              Text(bio,style: bodyTextStyle,),
              sixteenVSpacer,
              Row(children: const [
                PrimaryButton(icon: Icons.thumb_up, buttonTitle: 'Hire Me', url: linkedIn,),
                primaryHSpacer,
                PrimaryButton(icon: Icons.download_for_offline_sharp, buttonTitle: 'Download Resume', url: resume),
              ],),
            ],
          ),
        ),
        Image.asset(profilePic,width: screenWidth / 2.5),
      ],
    );
  }
}
