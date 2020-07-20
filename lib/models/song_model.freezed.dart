// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'song_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SongModel _$SongModelFromJson(Map<String, dynamic> json) {
  return _SongModel.fromJson(json);
}

class _$SongModelTearOff {
  const _$SongModelTearOff();

  _SongModel call({String id, String title, String artist}) {
    return _SongModel(
      id: id,
      title: title,
      artist: artist,
    );
  }
}

// ignore: unused_element
const $SongModel = _$SongModelTearOff();

mixin _$SongModel {
  String get id;
  String get title;
  String get artist;

  Map<String, dynamic> toJson();
  $SongModelCopyWith<SongModel> get copyWith;
}

abstract class $SongModelCopyWith<$Res> {
  factory $SongModelCopyWith(SongModel value, $Res Function(SongModel) then) =
      _$SongModelCopyWithImpl<$Res>;
  $Res call({String id, String title, String artist});
}

class _$SongModelCopyWithImpl<$Res> implements $SongModelCopyWith<$Res> {
  _$SongModelCopyWithImpl(this._value, this._then);

  final SongModel _value;
  // ignore: unused_field
  final $Res Function(SongModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object artist = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      artist: artist == freezed ? _value.artist : artist as String,
    ));
  }
}

abstract class _$SongModelCopyWith<$Res> implements $SongModelCopyWith<$Res> {
  factory _$SongModelCopyWith(
          _SongModel value, $Res Function(_SongModel) then) =
      __$SongModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String artist});
}

class __$SongModelCopyWithImpl<$Res> extends _$SongModelCopyWithImpl<$Res>
    implements _$SongModelCopyWith<$Res> {
  __$SongModelCopyWithImpl(_SongModel _value, $Res Function(_SongModel) _then)
      : super(_value, (v) => _then(v as _SongModel));

  @override
  _SongModel get _value => super._value as _SongModel;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object artist = freezed,
  }) {
    return _then(_SongModel(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      artist: artist == freezed ? _value.artist : artist as String,
    ));
  }
}

@JsonSerializable()
class _$_SongModel with DiagnosticableTreeMixin implements _SongModel {
  _$_SongModel({this.id, this.title, this.artist});

  factory _$_SongModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SongModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String artist;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SongModel(id: $id, title: $title, artist: $artist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SongModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('artist', artist));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SongModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.artist, artist) ||
                const DeepCollectionEquality().equals(other.artist, artist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(artist);

  @override
  _$SongModelCopyWith<_SongModel> get copyWith =>
      __$SongModelCopyWithImpl<_SongModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SongModelToJson(this);
  }
}

abstract class _SongModel implements SongModel {
  factory _SongModel({String id, String title, String artist}) = _$_SongModel;

  factory _SongModel.fromJson(Map<String, dynamic> json) =
      _$_SongModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get artist;
  @override
  _$SongModelCopyWith<_SongModel> get copyWith;
}
