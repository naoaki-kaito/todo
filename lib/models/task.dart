import 'package:flutter/material.dart';

class TaskModel extends ChangeNotifier {
  List<String> _items = [];

  TaskModel() {
    _init();
  }

  void _init() async {
  }

  List<String> get items => _items;

  void add(String strTask) {
    _items.add(strTask);
    notifyListeners();
  }

  void delete(i) {
    _items.removeAt(i);
    notifyListeners();
  }


}