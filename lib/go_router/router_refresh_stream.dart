import 'dart:async';

import 'package:flutter/foundation.dart';

class RouterRefreshNotifier extends ChangeNotifier {
  RouterRefreshNotifier(Stream<bool> isAuthenticatedStream) {
    notifyListeners();

    _subscription = isAuthenticatedStream.asBroadcastStream().listen(
      (value) {
        debugPrint('isAuthenticated: $value');
        notifyListeners();
      },
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();

    super.dispose();
  }
}
