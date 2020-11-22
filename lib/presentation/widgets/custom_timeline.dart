import 'package:flutter/material.dart';
import 'package:kousik_portfolio/domain/experience.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimeLine extends StatelessWidget {
  final Experience experience;
  final bool isFirst;

  const CustomTimeLine(
      {Key key, @required this.experience, @required this.isFirst})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      beforeLineStyle: LineStyle(
        color: Colors.lightBlue.shade200,
        thickness: 2.75,
      ),
      indicatorStyle: const IndicatorStyle(color: Color(0xff61F9D5)),
      // alignment: TimelineAlign.start,
      endChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            experience.title,
            style: const TextStyle(
              fontSize: 22.0,
              color: Color(0xffCCD6F6),
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            experience.description,
            style: TextStyle(
              fontSize: 13.0,
              color: const Color(0xffCCD6F6).withOpacity(0.5),
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            experience.timeline,
            style: TextStyle(
              fontSize: 12.0,
              color: const Color(0xffCCD6F6).withOpacity(0.5),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ).padding(left: 20),
    );
  }
}
