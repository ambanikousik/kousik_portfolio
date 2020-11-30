// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kousik_portfolio/presentation/pages/about/about.dart'
    deferred as about;
import 'package:kousik_portfolio/presentation/pages/experience/experience.dart'
    deferred as experience;
import 'package:styled_widget/styled_widget.dart';

import '../router/router.gr.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            icon: const Icon(
              Icons.change_history,
              size: 32.0,
              color: Color(0xff64FFDA),
            ),
            onPressed: () {
              // if (RouteData.of(context).path != Routes.homePage) {
              //   context.navigator.popUntilRoot();
              // }
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                    onPressed: () async {
                      await about.loadLibrary();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => about.About()),
                      );
                      // if (RouteData.of(context).path != Routes.about) {
                      //   context.navigator.push(Routes.about);
                      // }
                    },
                    child: const Text("About"))
                .padding(right: 10),
            TextButton(
                    onPressed: () async {
                      await experience.loadLibrary();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => experience.Experience()),
                      );
                      // if (RouteData.of(context).path != Routes.experience) {
                      //   context.navigator.push(Routes.experience);
                      // }
                    },
                    child: const Text("Experience"))
                .padding(right: 10),
            TextButton(
                    onPressed: () {
                      // if (RouteData.of(context).path != Routes.works) {
                      //   context.navigator.push(Routes.works);
                      // }
                    },
                    child: const Text("Work"))
                .padding(right: 10),
            // TextButton(onPressed: () {}, child: const Text("Blog"))
            //     .padding(right: 10),
            TextButton(
                    onPressed: () {
                      // if (RouteData.of(context).path != Routes.contact) {
                      //   context.navigator.push(Routes.contact);
                      // }
                    },
                    child: const Text("Contact"))
                .padding(right: 10),
          ],
        ),
      ],
    ).padding(horizontal: 10, vertical: 5);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
