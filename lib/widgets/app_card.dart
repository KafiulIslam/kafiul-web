import 'package:flutter/material.dart';
import 'package:kafi_website/utils/image_path.dart';
import 'package:kafi_website/utils/spacer.dart';
import 'package:kafi_website/utils/typography.dart';
import 'package:kafi_website/widgets/component/buttons/primary_button.dart';
import '../utils/color.dart';

class AppCard extends StatelessWidget {
  final String? title;
  final String? downloadUrl;
  final String? previewUrl;
  final String? description;
  final String? image;
  final double imageSize;

  const AppCard(
      {Key? key,
      this.title,
      this.downloadUrl,
      this.previewUrl,
      this.description,
      this.image,
      this.imageSize = 200.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 250,
      width: screenWidth / 2.5,
      child: Card(
        elevation: 10,
        color: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: const TextStyle(
                        fontSize: 32.0,
                        color: black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(description!,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: bodyTextStyle),
                    sixteenVSpacer,
                    Row(
                      children: [
                        PrimaryButton(
                          buttonTitle: 'Download',
                          icon: Icons.download_for_offline_sharp,
                          url: downloadUrl,
                        ),
                        sixteenHSpacer,
                        PrimaryButton(
                          buttonTitle: 'Preview',
                          icon: Icons.play_circle_outline,
                          url: previewUrl,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                image!,
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
