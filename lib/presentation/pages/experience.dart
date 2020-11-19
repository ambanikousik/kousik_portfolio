import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_text.dart';
import 'package:kousik_portfolio/presentation/widgets/topbar.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: TopBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 100),
        child: ListView(
          children: [
            const SizedBox(
              height: 92,
            ),
            Row(
              children: [
                const CustomText(
                  text: "02.",
                  textsize: 20.0,
                  color: Color(0xff61F9D5),
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                const CustomText(
                  text: "Where I've Worked",
                  textsize: 26.0,
                  color: Color(0xffCCD6F6),
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  width: 26.0,
                ),
                Container(
                  width: size.width / 4,
                  height: 0.75,
                  color: const Color(0xff303C55),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.07,
            ),
            TimelineTile(
              isFirst: true,
              beforeLineStyle: LineStyle(
                color: Colors.lightBlue.shade200,
                thickness: 2.75,
              ),
              indicatorStyle: const IndicatorStyle(color: Color(0xff61F9D5)),
              // alignment: TimelineAlign.start,
              endChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Sandip Institute Of Engineering & Management Nashik",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Savitribai Phule Pune University",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: const Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "2016 - Present ",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: const Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ).padding(left: 20),
            ),
            TimelineTile(
              beforeLineStyle: LineStyle(
                color: Colors.lightBlue.shade200,
                thickness: 2.75,
              ),
              indicatorStyle: const IndicatorStyle(color: Color(0xff61F9D5)),
              endChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Flutter + Dart Development Winter Bootcamp",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "The Complete 2020 Flutter + Dart Winter Development Bootcamp at LCO Training Center,\nJaipur, Rajasthan (302017), Covering all the fundamental concepts for Flutter development",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: const Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Dec - 2019 to Feb - 2020 ",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: const Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ).padding(left: 20),
            ),
            TimelineTile(
              beforeLineStyle: LineStyle(
                color: Colors.lightBlue.shade200,
                thickness: 2.75,
              ),
              indicatorStyle: const IndicatorStyle(color: Color(0xff61F9D5)),
              endChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Freelancer - Flutter | Dart Mobile App Developer | UI - UX Designer",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Flutter Developer and experienced programmer with an extensive history of designing and coding \nsolutions. Skilled in Google’s Flutter/Dart, Firebase App and Web development on a global scale. If you \nare looking for someone that you can trust that will complete your app on time and on budget, then \nplease contact me. I have been developing software for 1+ years and take pride in everything I do.",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: const Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Oct 2019 - Present ",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: const Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ).padding(left: 20),
            ),
          ],
        ),
      ),
    );
  }
}
