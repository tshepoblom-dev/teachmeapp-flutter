# Agora RTC Engine — native .so calls back into these classes via JNI using
# string-based lookups R8 can't see as "in use". The AAR's own consumer
# rules should cover this, but this is the highest-risk component for a
# first-time R8 enablement, so keep an explicit redundant safety net.
-keep class io.agora.** { *; }
-keep interface io.agora.** { *; }
-dontwarn io.agora.**

# Firebase, flutter_local_notifications, flutter_secure_storage: no rules
# needed — their AARs bundle their own consumer-rules.pro.
#
# webview_flutter: no @JavascriptInterface/addJavaScriptChannel usage exists
# in this codebase (lib/features/wallet/presentation/screens/payment_webview_screen.dart
# is a plain redirect-capture webview with no JS bridge) — no rule needed.
