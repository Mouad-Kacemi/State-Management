import 'package:flutter/material.dart';

class languageProvider with ChangeNotifier {
  bool langEng = true;
  Map<String, String> textAr = {
    "lang": "EN",
    'body': 'يستخدم هذا التطبيق لتحديث القيم'
  };
  Map<String, String> textEn = {
    "lang": "AR",
    'body': 'This app is used to update values'
  };

  String getBody(String key) {
    if (langEng) return textEn[key]!;
    notifyListeners();
    return textAr[key]!;
  }

  void change(bool ch) {
    if (ch) {
      langEng = false;
      notifyListeners();
    } else {
      langEng = true;
      notifyListeners();
    }
  }
}
