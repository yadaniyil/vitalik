import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'song_model.freezed.dart';
part 'song_model.g.dart';

@freezed
abstract class SongModel with _$SongModel {
  factory SongModel({
    String id,
    String title,
    String artist,
  }) = _SongModel;


  factory SongModel.fromJson(Map<String, dynamic> json) => _$SongModelFromJson(json);
}
