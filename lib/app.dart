import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/push/pending_deep_link_provider.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/widgets/offline_banner.dart';

class TeachMeApp extends ConsumerWidget {
  const TeachMeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    // Consumes a deep link queued by a push-notification tap (foreground,
    // background, or terminated-launch) once the router is mounted. If this
    // fires before auth/router redirects have settled (e.g. a terminated
    // launch where authBootstrapProvider hasn't resolved yet), go_router's
    // own `redirect` may immediately override the pushed path — accepted as
    // a known limitation rather than solved here.
    ref.listen(pendingDeepLinkProvider, (previous, next) {
      if (next != null) {
        router.push(next);
        ref.read(pendingDeepLinkProvider.notifier).consume();
      }
    });

    return MaterialApp.router(
      title: 'TeachMeApp',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: router,
      builder: (context, child) => OfflineBanner(child: child ?? const SizedBox.shrink()),
    );
  }
}
