
import 'package:url_launcher/url_launcher.dart';

class Launcher {

  static Future<void> launchInBrowser(String fileUrl) async {
    final Uri _url = Uri.parse(fileUrl);
    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

}