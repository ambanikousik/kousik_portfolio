import 'package:auto_route/auto_route_annotations.dart';
import 'package:kousik_portfolio/presentation/pages/about.dart';
import 'package:kousik_portfolio/presentation/pages/contact.dart';
import 'package:kousik_portfolio/presentation/pages/experience.dart';
import 'package:kousik_portfolio/presentation/pages/home_page.dart';
import 'package:kousik_portfolio/presentation/pages/works.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomePage),
  MaterialRoute(page: About),
  MaterialRoute(page: Experience),
  MaterialRoute(page: Works),
  MaterialRoute(page: Contact),
])
class $AppRouter {}
