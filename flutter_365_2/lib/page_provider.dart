import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  int pageNo = 0;

  void changePage(int page) {
    pageNo = page;
    notifyListeners();
  }
}
