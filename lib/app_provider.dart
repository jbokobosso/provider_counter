import 'package:flutter/foundation.dart';

class AppProvider extends ChangeNotifier {
  int counter = 0;

  increment() {
    counter += 1;
    notifyListeners();
  }
}