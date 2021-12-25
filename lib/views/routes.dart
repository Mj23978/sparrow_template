import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'splash_view.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => [
        '/',
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(key: ValueKey("Splash"), child: SplashView()),
    ];
  }
}
