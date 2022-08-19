import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class NavigationStatusDao extends ChangeNotifier {
  // 底下 Bar 狀態
  int currentIndex = 0;

  int getCurrentIndex() {
    return currentIndex;
  }

  void updateTodo(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
}
