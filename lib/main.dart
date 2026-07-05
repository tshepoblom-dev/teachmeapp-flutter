import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'firebase_options.dart';

/// Must be a top-level function annotated `@pragma('vm:entry-point')` — FCM
/// invokes this in a separate background isolate with no `ProviderScope`, so
/// it cannot be a closure/instance method and must re-initialize Firebase
/// itself. Kept minimal: messages with a `notification` block are already
/// displayed by the OS by the time this runs; this hook only matters for
/// data-only background messages needing custom processing, which this app
/// doesn't currently use.
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const ProviderScope(child: TeachMeApp()));
}
