import 'package:flutter/widgets.dart';

class Data with ChangeNotifier {
  String _data = 'TopLevel data 1112211';

  String get getData => _data;
  void changeString(String newString) {
    _data = newString;
    notifyListeners();
  }
}
