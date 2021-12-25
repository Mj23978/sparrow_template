import 'package:beamer/beamer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'views/404/404_view.dart';
import 'views/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  final parser = BeamerParser();
  final routerDelegate = BeamerDelegate(
    initialPath: '/',
    locationBuilder: BeamerLocationBuilder(beamLocations: [
      HomeLocation(),
    ]),
    notFoundPage: BeamPage(key: const ValueKey("404"), child: NotFoundPage()),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: parser,
      routerDelegate: routerDelegate,
      backButtonDispatcher:
          BeamerBackButtonDispatcher(delegate: routerDelegate),
      debugShowCheckedModeBanner: false,
    );
  }
}
