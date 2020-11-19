import 'package:flutter/material.dart';
import 'package:kousik_portfolio/presentation/method.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_text.dart';
import 'package:kousik_portfolio/presentation/widgets/feature_project.dart';
import 'package:kousik_portfolio/presentation/widgets/main_title.dart';
import 'package:kousik_portfolio/presentation/widgets/os_image.dart';
import 'package:kousik_portfolio/presentation/widgets/topbar.dart';

class Works extends StatelessWidget {
  final Method method = Method();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: TopBar(),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 100),
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 92,
              ),
              const MainTiitle(
                number: "0.3",
                text: "Some Things I've Built",
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              FeatureProject(
                imagePath: "images/pic9.jpg",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/WhatsApp--UI-Clone");
                },
                projectDesc:
                    "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                projectTitle: "WhatsaApp UI Clone",
                tech1: "Flutter",
                tech2: "Dart",
                tech3: "Flutter UI",
              ),

              FeatureProject(
                imagePath: "images/pic2.jpg",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Flutter-Blog-App-using-Firebase");
                },
                projectDesc:
                    "A blog application using Flutter and firebase, In this project implement Firebase CURD operation, User can add post as well see all the post.",
                projectTitle: "Blog Application",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Firebase",
              ),

              FeatureProject(
                imagePath: "images/pic3.png",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Wallpaper-Hub-using-Flutter");
                },
                projectDesc:
                    "A Wallpaper application Using Pixel API, to show more than 5k+ images. User can Search any images, as well as Download and directly set Image as Wallpaper.",
                projectTitle: "Wallpaper Hub",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "API",
              ),

              FeatureProject(
                imagePath: "images/pic4.jpg",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/coronavirus-tracker-app");
                },
                projectDesc:
                    "A Flutter app to track Coronavirus outbreak, Current statistics of global total confirmed, deaths, recovered cases, Health news, coronavirus safety information and many more.",
                projectTitle: "Covid19 Tracker",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "API",
              ),
              //ff
              FeatureProject(
                imagePath: "images/pic5.jpg",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Gender-Predictor-Flutter-App");
                },
                projectDesc:
                    "In this app you can predict the gender with the help of name and probability of that name.",
                projectTitle: "Gender Predictor",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "API",
              ),

              FeatureProject(
                imagePath: "images/pic6.jpg",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/News-Hours-Apps-Using-Rest-API");
                },
                projectDesc:
                    "complete news Application using rest API API link- https://newsapi.org, you can get all news.",
                projectTitle: "News Hour",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "API",
              ),

              FeatureProject(
                imagePath: "images/pic7.jpg",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Flutter-wallpaper-App-using-Firebase");
                },
                projectDesc:
                    "Flutter Wallpaper application using firebase as a backend with a cool animation, it show the all images that are store in firebase firestore.",
                projectTitle: "Wallpaper App",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Firebase",
              ),

              FeatureProject(
                imagePath: "images/pic8.jpg",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Flutter-Weather-Application");
                },
                projectDesc:
                    "Weather app. This weather app is one of best free weather apps with full features: Local weather, weather map (weather map service) and weather widgets. Widgets for Android: The weather radar widget free and clock widget weather with beautiful style.",
                projectTitle: "Weather Application",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "API",
              ),

              FeatureProject(
                imagePath: "images/pic10.jpg",
                ontab: () {
                  method.launchURL(
                      "https://pub.dev/packages/flutter_onboarding_screen");
                },
                projectDesc:
                    "A flutter package which help developer in creating a onboarding screens of their app.",
                projectTitle: "Flutter Onboarding Screen Package",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Dart Package",
              ),

              FeatureProject(
                imagePath: "images/pic11.jpg",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Flutter-Neumorphic-Calculator-UI");
                },
                projectDesc: "To explore the flutter Neumorphic design",
                projectTitle: "Neumorphic Design",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Flutter UI",
              ),

              const MainTiitle(
                number: "0.4",
                text: "Open Source Project",
              ),

              SizedBox(
                height: size.height * 0.04,
              ),

              //other Projects
              SizedBox(
                height: size.height * 0.86,
                width: size.width - 100,
                //color: Colors.deepOrangeAccent,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        OSImages(
                          image: "images/pic101.png",
                        ),
                        OSImages(
                          image: "images/pic103.png",
                        ),
                        OSImages(
                          image: "images/pic111.gif",
                        ),
                        OSImages(
                          image: "images/pic113.jfif",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                          text: "Payment Getway",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                        CustomText(
                          text: "Chat App",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                        CustomText(
                          text: "Spotify Clone",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                        CustomText(
                          text: "TODO App",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //other Projects
              SizedBox(
                height: size.height * 0.86,
                width: size.width - 100,
                // color: Colors.indigo,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        OSImages(
                          image: "images/pic114.png",
                        ),
                        OSImages(
                          image: "images/pic115.png",
                        ),
                        OSImages(
                          image: "images/pic116.jfif",
                        ),
                        OSImages(
                          image: "images/pic117.png",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                          text: "Spannish Audio",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                        CustomText(
                          text: "Drumpad",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                        CustomText(
                          text: "Currency Converter",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                        CustomText(
                          text: "Calculator",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //other Projects
              SizedBox(
                height: size.height * 0.86,
                width: size.width - 100,
                //color: Colors.deepOrangeAccent,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        OSImages(
                          image: "images/pic118.jpeg",
                        ),
                        OSImages(
                          image: "images/pic119.jpeg",
                        ),
                        OSImages(
                          image: "images/pic120.png",
                        ),
                        OSImages(
                          image: "images/pic121.png",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                          text: "Prime Videos UI",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                        CustomText(
                          text: "Tic Tac Toe Game",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                        CustomText(
                          text: "Currency Converter UI",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                        CustomText(
                          text: "Love Calculator",
                          textsize: 16.0,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              FeatureProject(
                imagePath: "images/pic102.gif",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Flutter-Web-SolMusic-Landing-Page");
                },
                projectDesc:
                    "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                projectTitle: "SolMusic",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Web",
              ),

              FeatureProject(
                imagePath: "images/pic104.png",
                ontab: () {
                  method
                      .launchURL("https://github.com/champ96k/Flutter-UI-Kit");
                },
                projectDesc:
                    "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                projectTitle: "Sign Up and Sign In",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Flutter UI",
              ),

              FeatureProject(
                imagePath: "images/pic105.png",
                ontab: () {
                  method
                      .launchURL("https://github.com/champ96k/Flutter-UI-Kit");
                },
                projectDesc:
                    "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                projectTitle: "Sign up and Sign in",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Flutter UI",
              ),

              FeatureProject(
                imagePath: "images/pic106.png",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Flowers-Shop-Mobile-App-Store");
                },
                projectDesc:
                    "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                projectTitle: "Online Flowers Shop",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Flutter UI",
              ),

              FeatureProject(
                imagePath: "images/pic107.jfif",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Food-Delivery-App-UI");
                },
                projectDesc:
                    "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                projectTitle: "Food delivery App",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Flutter UI",
              ),

              FeatureProject(
                imagePath: "images/pic108.jfif",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Flutter-Plant-Shop-UI-Design");
                },
                projectDesc:
                    "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                projectTitle: "Plant Nursery App",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Flutter UI",
              ),

              FeatureProject(
                imagePath: "images/pic109.jfif",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Foody-App-UI-Design");
                },
                projectDesc:
                    "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                projectTitle: "Foody",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Flutter UI",
              ),

              FeatureProject(
                imagePath: "images/pic110.jfif",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Flutter-Online-Food-Order-App-UI");
                },
                projectDesc:
                    "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                projectTitle: "Online Food order",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Flutter UI",
              ),

              FeatureProject(
                imagePath: "images/pic501.png",
                ontab: () {
                  method
                      .launchURL("https://github.com/champ96k/Ganpati-Bappa-");
                },
                projectDesc:
                    "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                projectTitle: "Ganpati Bappa",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Flutter Animation",
              ),

              FeatureProject(
                imagePath: "images/pic506.png",
                ontab: () {
                  method.launchURL(
                      "https://github.com/champ96k/Netflix-Web-Clone-Using-Flutter");
                },
                projectDesc:
                    "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                projectTitle: "Flutter Netflix Web",
                tech1: "Dart",
                tech2: "Flutter Wen",
                tech3: "Flutter UI",
              ),
            ],
          ),
        ));
  }
}
