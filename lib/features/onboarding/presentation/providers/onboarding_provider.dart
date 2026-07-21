import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/storage/preferences_service.dart';

class OnboardingNotifier extends Notifier<bool> {
  @override
  bool build() => true; // Assume seen until bootstrap proves otherwise, so the loading gate is what protects new installs.

  void setSeen(bool value) => state = value;

  void markSeen() {
    state = true;
    ref.read(preferencesServiceProvider).setHasSeenOnboarding(true);
  }
}

final onboardingProvider = NotifierProvider<OnboardingNotifier, bool>(OnboardingNotifier.new);

/// Awaited by the router before its first redirect decision, same as
/// [authBootstrapProvider], so a returning user doesn't flash the onboarding
/// flow before the persisted flag has been read.
final onboardingBootstrapProvider = FutureProvider<void>((ref) async {
  final seen = await ref.read(preferencesServiceProvider).hasSeenOnboarding();
  ref.read(onboardingProvider.notifier).setSeen(seen);
});
