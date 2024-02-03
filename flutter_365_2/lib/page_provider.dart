import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  int pageNo = 0;

  int GetPage(int page) {
    pageNo = page;
    notifyListeners();
    return pageNo;
  }
}
