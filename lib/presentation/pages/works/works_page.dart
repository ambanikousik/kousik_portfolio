import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kousik_portfolio/application/works/bloc/works_bloc.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_title.dart';
import 'package:kousik_portfolio/presentation/widgets/feature_project_widget.dart';
import 'package:kousik_portfolio/presentation/widgets/loading_widget.dart';
import 'package:kousik_portfolio/presentation/widgets/topbar.dart';

class WorksPage extends StatelessWidget {
  const WorksPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorksBloc, WorksState>(
        listenWhen: (prevState, currentState) =>
            prevState.loading != currentState.loading,
        listener: (context, state) {
          if (state.loading) {
            showDialog(
              context: context,
              barrierColor: Colors.black12,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return const AlertDialog(
                  backgroundColor: Colors.transparent,
                  content: LoadingWidget(),
                );
              },
            );
          } else {
            Navigator.of(context).pop();
          }
          // do stuff here based on BlocA's state
        },
        buildWhen: (prevState, currentState) =>
            prevState.projects != currentState.projects,
        builder: (context, state) {
          final List<Widget> _widgets = [
            const CustomTitle(title: "Some Things I've Built", index: "0.3"),
            ...List<FeatureProjectWidget>.from(
                state.projects.map((e) => FeatureProjectWidget(
                      featureProject: e,
                    )))
          ];

          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Scaffold(
                appBar: TopBar(),
                body: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth >= 1100 ? 100 : 20),
                  child: ListView.builder(
                    itemCount: _widgets.length,
                    itemBuilder: (context, index) => _widgets[index],
                  ),
                ),
              );
            },
          );
        });

    // return Scaffold(
    //     appBar: TopBar(),
    //     body: Container(
    //       margin: const EdgeInsets.symmetric(horizontal: 100),
    //       child: ListView(
    //         shrinkWrap: true,
    //         children: [
    //           const CustomTitle(title: "Some Things I've Built", index: "0.3"),

    //           const MainTiitle(
    //             number: "0.4",
    //             text: "Open Source Project",
    //           ),

    //           SizedBox(
    //             height: size.height * 0.04,
    //           ),

    //           //other Projects
    //           SizedBox(
    //             height: size.height * 0.86,
    //             width: size.width - 100,
    //             //color: Colors.deepOrangeAccent,
    //             child: Column(
    //               children: [
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                   children: const [
    //                     OSImages(
    //                       image: "images/pic101.png",
    //                     ),
    //                     OSImages(
    //                       image: "images/pic103.png",
    //                     ),
    //                     OSImages(
    //                       image: "images/pic111.gif",
    //                     ),
    //                     OSImages(
    //                       image: "images/pic113.jfif",
    //                     ),
    //                   ],
    //                 ),
    //                 SizedBox(
    //                   height: size.height * 0.04,
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                   children: [
    //                     CustomText(
    //                       text: "Payment Getway",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     CustomText(
    //                       text: "Chat App",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     CustomText(
    //                       text: "Spotify Clone",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     CustomText(
    //                       text: "TODO App",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),

    //           //other Projects
    //           SizedBox(
    //             height: size.height * 0.86,
    //             width: size.width - 100,
    //             // color: Colors.indigo,
    //             child: Column(
    //               children: [
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                   children: const [
    //                     OSImages(
    //                       image: "images/pic114.png",
    //                     ),
    //                     OSImages(
    //                       image: "images/pic115.png",
    //                     ),
    //                     OSImages(
    //                       image: "images/pic116.jfif",
    //                     ),
    //                     OSImages(
    //                       image: "images/pic117.png",
    //                     ),
    //                   ],
    //                 ),
    //                 SizedBox(
    //                   height: size.height * 0.04,
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                   children: [
    //                     CustomText(
    //                       text: "Spannish Audio",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     CustomText(
    //                       text: "Drumpad",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     CustomText(
    //                       text: "Currency Converter",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     CustomText(
    //                       text: "Calculator",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),

    //           //other Projects
    //           SizedBox(
    //             height: size.height * 0.86,
    //             width: size.width - 100,
    //             //color: Colors.deepOrangeAccent,
    //             child: Column(
    //               children: [
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                   children: const [
    //                     OSImages(
    //                       image: "images/pic118.jpeg",
    //                     ),
    //                     OSImages(
    //                       image: "images/pic119.jpeg",
    //                     ),
    //                     OSImages(
    //                       image: "images/pic120.png",
    //                     ),
    //                     OSImages(
    //                       image: "images/pic121.png",
    //                     ),
    //                   ],
    //                 ),
    //                 SizedBox(
    //                   height: size.height * 0.04,
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                   children: [
    //                     CustomText(
    //                       text: "Prime Videos UI",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     CustomText(
    //                       text: "Tic Tac Toe Game",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     CustomText(
    //                       text: "Currency Converter UI",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     CustomText(
    //                       text: "Love Calculator",
    //                       textsize: 16.0,
    //                       color: Colors.white.withOpacity(0.4),
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),

    //           FeatureProjectWidget(
    //             imagePath: "images/pic102.gif",
    //             ontab: () {
    //               method.launchURL(
    //                   "https://github.com/champ96k/Flutter-Web-SolMusic-Landing-Page");
    //             },
    //             projectDesc:
    //                 "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
    //             projectTitle: "SolMusic",
    //             techs: const ['Flutter', 'Dart', 'Web'],
    //           ),

    //           FeatureProjectWidget(
    //             imagePath: "images/pic104.png",
    //             ontab: () {
    //               method
    //                   .launchURL("https://github.com/champ96k/Flutter-UI-Kit");
    //             },
    //             projectDesc:
    //                 "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
    //             projectTitle: "Sign Up and Sign In",
    //             techs: const ['Flutter', 'Dart', 'Flutter UI'],
    //           ),

    //           FeatureProjectWidget(
    //             imagePath: "images/pic105.png",
    //             ontab: () {
    //               method
    //                   .launchURL("https://github.com/champ96k/Flutter-UI-Kit");
    //             },
    //             projectDesc:
    //                 "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
    //             projectTitle: "Sign up and Sign in",
    //             techs: const ['Flutter', 'Dart', 'Flutter UI'],
    //           ),

    //           FeatureProjectWidget(
    //             imagePath: "images/pic106.png",
    //             ontab: () {
    //               method.launchURL(
    //                   "https://github.com/champ96k/Flowers-Shop-Mobile-App-Store");
    //             },
    //             projectDesc:
    //                 "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
    //             projectTitle: "Online Flowers Shop",
    //             techs: const ['Flutter', 'Dart', 'Flutter UI'],
    //           ),

    //           FeatureProjectWidget(
    //             imagePath: "images/pic107.jfif",
    //             ontab: () {
    //               method.launchURL(
    //                   "https://github.com/champ96k/Food-Delivery-App-UI");
    //             },
    //             projectDesc:
    //                 "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
    //             projectTitle: "Food delivery App",
    //             techs: const ['Flutter', 'Dart', 'Flutter UI'],
    //           ),

    //           FeatureProjectWidget(
    //             imagePath: "images/pic108.jfif",
    //             ontab: () {
    //               method.launchURL(
    //                   "https://github.com/champ96k/Flutter-Plant-Shop-UI-Design");
    //             },
    //             projectDesc:
    //                 "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
    //             projectTitle: "Plant Nursery App",
    //             techs: const ['Flutter', 'Dart', 'Flutter UI'],
    //           ),

    //           FeatureProjectWidget(
    //             imagePath: "images/pic109.jfif",
    //             ontab: () {
    //               method.launchURL(
    //                   "https://github.com/champ96k/Foody-App-UI-Design");
    //             },
    //             projectDesc:
    //                 "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
    //             projectTitle: "Foody",
    //             techs: const ['Flutter', 'Dart', 'Flutter UI'],
    //           ),

    //           FeatureProjectWidget(
    //             imagePath: "images/pic110.jfif",
    //             ontab: () {
    //               method.launchURL(
    //                   "https://github.com/champ96k/Flutter-Online-Food-Order-App-UI");
    //             },
    //             projectDesc:
    //                 "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
    //             projectTitle: "Online Food order",
    //             techs: const ['Flutter', 'Dart', 'Flutter UI'],
    //           ),

    //           FeatureProjectWidget(
    //             imagePath: "images/pic501.png",
    //             ontab: () {
    //               method
    //                   .launchURL("https://github.com/champ96k/Ganpati-Bappa-");
    //             },
    //             projectDesc:
    //                 "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
    //             projectTitle: "Ganpati Bappa",
    //             techs: const ['Flutter', 'Dart', 'Flutter UI'],
    //           ),

    //           FeatureProjectWidget(
    //             imagePath: "images/pic506.png",
    //             ontab: () {
    //               method.launchURL(
    //                   "https://github.com/champ96k/Netflix-Web-Clone-Using-Flutter");
    //             },
    //             projectDesc:
    //                 "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
    //             projectTitle: "Flutter Netflix Web",
    //             techs: const ['Flutter', 'Dart', 'Flutter UI'],
    //           ),
    //         ],
    //       ),
    //     ));
  }
}
