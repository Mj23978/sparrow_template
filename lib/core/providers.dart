import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'notifiers/splash_notifier.dart';
import 'states/splash_states.dart';

final splashProvider = StateNotifierProvider<SplashNotifier, SplashState>((ref) {
  return SplashNotifier();
});

