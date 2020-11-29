import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../router/router.gr.dart' deferred as router;

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
              if (RouteData.of(context).path != router.Routes.homePage) {
                context.navigator.popUntilRoot();
              }
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                    onPressed: () {
                      if (RouteData.of(context).path != router.Routes.about) {
                        context.navigator.push(router.Routes.about);
                      }
                    },
                    child: const Text("About"))
                .padding(right: 10),
            TextButton(
                    onPressed: () {
                      if (RouteData.of(context).path !=
                          router.Routes.experience) {
                        context.navigator.push(router.Routes.experience);
                      }
                    },
                    child: const Text("Experience"))
                .padding(right: 10),
            TextButton(
                    onPressed: () {
                      if (RouteData.of(context).path != router.Routes.works) {
                        context.navigator.push(router.Routes.works);
                      }
                    },
                    child: const Text("Work"))
                .padding(right: 10),
            // TextButton(onPressed: () {}, child: const Text("Blog"))
            //     .padding(right: 10),
            TextButton(
                    onPressed: () {
                      if (RouteData.of(context).path != router.Routes.contact) {
                        context.navigator.push(router.Routes.contact);
                      }
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
