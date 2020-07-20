import 'dart:collection';

import 'package:vitalik/models/song_model.dart';
import 'package:vitalik/services/covers_service_impl.dart';
import 'package:flutter/foundation.dart';

class CoversState extends ChangeNotifier {
  List<SongModel> _covers = [];

  UnmodifiableListView<SongModel> get covers => UnmodifiableListView(_covers);

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  CoversState() {
    CoversServiceImpl().myCovers().listen((covers) {
      _covers = covers;
      notifyListeners();
    });
  }

  Future<void> add(String title, String artist) async {
    _isLoading = true;
    SongModel cover = SongModel(title: title, artist: artist);
    String id = await CoversServiceImpl().createCover(cover);
    cover = cover.copyWith(id: id);
    _covers.add(cover);
    _isLoading = false;
    notifyListeners();
  }
}
