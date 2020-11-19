import 'package:url_launcher/url_launcher.dart';

class Method {
  Future launchURL(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  Future launchCaller() async {
    const url = "tel:9595242507";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future launchEmail() async {
    if (await canLaunch("mailto:champ96k@gmail.com")) {
      await launch("mailto:champ96k@gmail.com");
    } else {
      throw 'Could not launch';
    }
  }
}
