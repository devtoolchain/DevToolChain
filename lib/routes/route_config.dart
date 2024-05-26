import 'package:devtoolchain/routes/routes.dart';
import 'package:devtoolchain/views/about/about_page.dart';
import 'package:devtoolchain/views/contact/contact_screen.dart';
import 'package:devtoolchain/views/page_not_found/page_not_found.dart';
import 'package:devtoolchain/views/services/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../views/home/home_screen.dart';
import '../widgets/widgets.dart';

class RouteConfig {
  static GoRouter router = GoRouter(
      initialLocation: RoutePath.initialRoute,
      errorBuilder: (context, state) => const ResponsivePage(
            desktop: DesktopPageNotFound(),
            mobile: MobilePageNotFound(),
            tablet: TabletPageNotFound(),
          ),
      routes: [
        GoRoute(
          path: RoutePath.initialRoute,
          name: RouteName.initial,
          pageBuilder: (context, state) => const MaterialPage(
              child: ResponsivePage(
            mobile: MobileHome(),
            desktop: DesktopHome(),
            tablet: TabletHome(),
          )),
        ),
        GoRoute(
          path: RoutePath.serviceRoute,
          name: RouteName.service,
          pageBuilder: (context, state) => const MaterialPage(
              child: ResponsivePage(
            mobile: MobileServices(),
            desktop: DesktopServices(),
            tablet: TabletServices(),
          )),
        ),
        GoRoute(
          path: RoutePath.aboutRoute,
          name: RouteName.about,
          pageBuilder: (context, state) => const MaterialPage(
              child: ResponsivePage(
            mobile: MobileAbout(),
            desktop: DesktopAbout(),
            tablet: TabletAbout(),
          )),
        ),
        GoRoute(
          path: RoutePath.contactRoute,
          name: RouteName.contact,
          pageBuilder: (context, state) => const MaterialPage(
              child: ResponsivePage(
            mobile: MobileContact(),
            desktop: DesktopContact(),
            tablet: TabletContact(),
          )),
        ),
      ]);
}
