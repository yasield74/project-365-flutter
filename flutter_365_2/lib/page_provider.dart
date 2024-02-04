import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  int pageNo = 0;

  int get page => pageNo;

  set setPage(int page) {
    pageNo = page;
    notifyListeners();
  }
}
