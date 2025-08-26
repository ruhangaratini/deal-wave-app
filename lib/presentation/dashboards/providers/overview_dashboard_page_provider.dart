import 'package:flutter/material.dart';

class OverviewDashboardPageProvider extends ChangeNotifier {
  bool isLoading = true;

  void init() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      isLoading = false;
      notifyListeners();
    });
  }
}
