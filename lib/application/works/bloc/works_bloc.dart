import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kousik_portfolio/domain/feature_project.dart';

part 'works_event.dart';
part 'works_state.dart';
part 'works_bloc.freezed.dart';

class WorksBloc extends Bloc<WorksEvent, WorksState> {
  WorksBloc()
      : super(const WorksState(projects: [], loading: false, errorMsg: ''));

  @override
  Stream<WorksState> mapEventToState(
    WorksEvent event,
  ) async* {
    yield* event.when(load: () async* {
      final List<FeatureProject> _projects = [
        const FeatureProject(
          image: "images/pic9.jpg",
          gitLink: "https://github.com/champ96k/WhatsApp--UI-Clone",
          details:
              "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
          title: "WhatsaApp UI Clone",
          techs: ['Flutter', 'Dart', 'Flutter UI'],
        ),

        const FeatureProject(
          image: "images/pic2.jpg",
          gitLink:
              "https://github.com/champ96k/Flutter-Blog-App-using-Firebase",
          details:
              "A blog application using Flutter and firebase, In this project implement Firebase CURD operation, User can add post as well see all the post.",
          title: "Blog Application",
          techs: ['Flutter', 'Dart', 'Firebase'],
        ),

        const FeatureProject(
          image: "images/pic3.png",
          gitLink: "https://github.com/champ96k/Wallpaper-Hub-using-Flutter",
          details:
              "A Wallpaper application Using Pixel API, to show more than 5k+ images. User can Search any images, as well as Download and directly set Image as Wallpaper.",
          title: "Wallpaper Hub",
          techs: ['Flutter', 'Dart', 'API'],
        ),

        const FeatureProject(
          image: "images/pic4.jpg",
          gitLink: "https://github.com/champ96k/coronavirus-tracker-app",
          details:
              "A Flutter app to track Coronavirus outbreak, Current statistics of global total confirmed, deaths, recovered cases, Health news, coronavirus safety information and many more. A Flutter app to track Coronavirus outbreak, Current statistics of global total confirmed, deaths, recovered cases, Health news, coronavirus safety information and many more.",
          title: "Covid19 Tracker",
          techs: ['Flutter', 'Dart', 'API'],
        ),
        //ff
        const FeatureProject(
          image: "images/pic5.jpg",
          gitLink: "https://github.com/champ96k/Gender-Predictor-Flutter-App",
          details:
              "In this app you can predict the gender with the help of name and probability of that name.",
          title: "Gender Predictor",
          techs: ['Flutter', 'Dart', 'API'],
        ),

        const FeatureProject(
          image: "images/pic6.jpg",
          gitLink: "https://github.com/champ96k/News-Hours-Apps-Using-Rest-API",
          details:
              "complete news Application using rest API API link- https://newsapi.org, you can get all news.",
          title: "News Hour",
          techs: ['Flutter', 'Dart', 'API'],
        ),

        const FeatureProject(
          image: "images/pic7.jpg",
          gitLink:
              "https://github.com/champ96k/Flutter-wallpaper-App-using-Firebase",
          details:
              "Flutter Wallpaper application using firebase as a backend with a cool animation, it show the all images that are store in firebase firestore.",
          title: "Wallpaper App",
          techs: ['Flutter', 'Dart', 'API'],
        ),

        const FeatureProject(
          image: "images/pic8.jpg",
          gitLink: "https://github.com/champ96k/Flutter-Weather-Application",
          details:
              "Weather app. This weather app is one of best free weather apps with full features: Local weather, weather map (weather map service) and weather widgets. Widgets for Android: The weather radar widget free and clock widget weather with beautiful style.",
          title: "Weather Application",
          techs: ['Flutter', 'Dart', 'API'],
        ),

        const FeatureProject(
          image: "images/pic10.jpg",
          gitLink: "https://pub.dev/packages/flutter_onboarding_screen",
          details:
              "A flutter package which help developer in creating a onboarding screens of their app.",
          title: "Flutter Onboarding Screen Package",
          techs: ['Flutter', 'Dart', 'Dart Package'],
        ),

        const FeatureProject(
          image: "images/pic11.jpg",
          gitLink:
              "https://github.com/champ96k/Flutter-Neumorphic-Calculator-UI",
          details: "To explore the flutter Neumorphic design",
          title: "Neumorphic Design",
          techs: ['Flutter', 'Dart', 'Flutter UI'],
        ),
      ];

      yield state.copyWith(projects: _projects);
    });
  }
}
