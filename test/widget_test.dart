import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:teachmeapp_flutter/app.dart';
import 'package:teachmeapp_flutter/core/connectivity/connectivity_provider.dart';

void main() {
  testWidgets('Cold start with no stored token lands on the login screen', (tester) async {
    // connectivity_plus has no platform-channel mock in the test harness;
    // override it with a fixed "online" stream rather than hitting the
    // real plugin channel.
    await tester.pumpWidget(ProviderScope(
      overrides: [isOnlineProvider.overrideWith((ref) => Stream.value(true))],
      child: const TeachMeApp(),
    ));
    // Secure-storage's token read is a real platform-channel round trip, not
    // a virtual-clock Timer — give it a real async gap before pumping again.
    await tester.runAsync(() => Future.delayed(const Duration(milliseconds: 300)));
    await tester.pump();
    // Let the route-transition animation (splash -> login) finish settling.
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.text('Welcome back'), findsOneWidget);
  });
}
