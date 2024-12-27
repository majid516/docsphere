import 'package:flutter/material.dart';

class ScorllProvider with ChangeNotifier {
  String title = '';
  double scrollOffset = 0;
  final ScrollController scrollController = ScrollController();

  ScorllProvider(String doctorName) {
    title = '';
    _doctorName = doctorName; 
    scrollController.addListener(_scrollListener);
  }

  late String _doctorName;

  void _scrollListener() {
    scrollOffset = scrollController.offset;
    if (scrollOffset > 50) {
      title = _doctorName;
    } else {
      title = ''; 
    }
    notifyListeners();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
