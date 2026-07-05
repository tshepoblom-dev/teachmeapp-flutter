import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../domain/payment_transaction.dart';

/// Carries either a fully-resolved redirect URL (`form_fields` is empty) or
/// a form-post payload that must be auto-submitted client-side. PayFast and
/// Ozow both require the latter — they don't accept a plain GET redirect.
class PaymentWebviewScreen extends StatefulWidget {
  const PaymentWebviewScreen({super.key, required this.gatewayResponse});

  final PaymentGatewayResponse gatewayResponse;

  @override
  State<PaymentWebviewScreen> createState() => _PaymentWebviewScreenState();
}

class _PaymentWebviewScreenState extends State<PaymentWebviewScreen> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    final response = widget.gatewayResponse;
    final url = response.redirectUrl;

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) => setState(() => _isLoading = true),
          onPageFinished: (_) => setState(() => _isLoading = false),
          onNavigationRequest: _interceptNavigation,
        ),
      );

    if (url == null) {
      return;
    }

    final formFields = response.formFields;
    if (formFields != null && formFields.isNotEmpty) {
      _controller.loadHtmlString(_buildAutoSubmitForm(url, formFields), baseUrl: url);
    } else {
      _controller.loadRequest(Uri.parse(url));
    }
  }

  String _buildAutoSubmitForm(String actionUrl, Map<String, String> fields) {
    final inputs = fields.entries
        .map((e) => '<input type="hidden" name="${_escape(e.key)}" value="${_escape(e.value)}">')
        .join();
    return '''
<!DOCTYPE html>
<html>
  <body onload="document.forms[0].submit()">
    <form action="${_escape(actionUrl)}" method="POST">$inputs</form>
  </body>
</html>
''';
  }

  String _escape(String value) => value
      .replaceAll('&', '&amp;')
      .replaceAll('"', '&quot;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;');

  /// `return_url`/`cancel_url` (set server-side in `PaymentService`) point
  /// at `/api/payment/callback/{gateway}?ref=...` and the web app's wallet
  /// page with `?cancelled=1` respectively — both are intercepted here so
  /// the result is returned to the caller instead of rendering bare JSON or
  /// a web page the user can't usefully act on.
  NavigationDecision _interceptNavigation(NavigationRequest request) {
    final uri = Uri.tryParse(request.url);
    if (uri == null) return NavigationDecision.navigate;

    if (uri.path.contains('/payment/callback/')) {
      Navigator.of(context).pop(PaymentWebviewResult.completed);
      return NavigationDecision.prevent;
    }
    if (uri.queryParameters['cancelled'] == '1') {
      Navigator.of(context).pop(PaymentWebviewResult.cancelled);
      return NavigationDecision.prevent;
    }
    return NavigationDecision.navigate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complete payment')),
      body: widget.gatewayResponse.redirectUrl == null
          ? const Center(child: Text('This payment method has no redirect step.'))
          : Stack(
              children: [
                WebViewWidget(controller: _controller),
                if (_isLoading) const Center(child: CircularProgressIndicator()),
              ],
            ),
    );
  }
}

enum PaymentWebviewResult { completed, cancelled }
