// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
class _$CourseModelTearOff {
  const _$CourseModelTearOff();

  _CourseModel call(
      {@JsonKey(name: "id", required: true) required int id,
      @JsonKey(name: "title", required: true) required String title,
      @JsonKey(name: "description", required: true) required String desc,
      @JsonKey(name: "photo", required: true) required String photo,
      @JsonKey(name: "application_count", required: false) int? appCount,
      @JsonKey(name: "applied", required: false) bool? applied,
      @JsonKey(name: "by", required: false) UserModel? teachedBy}) {
    return _CourseModel(
      id: id,
      title: title,
      desc: desc,
      photo: photo,
      appCount: appCount,
      applied: applied,
      teachedBy: teachedBy,
    );
  }

  CourseModel fromJson(Map<String, Object> json) {
    return CourseModel.fromJson(json);
  }
}

/// @nodoc
const $CourseModel = _$CourseModelTearOff();

/// @nodoc
mixin _$CourseModel {
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title", required: true)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description", required: true)
  String get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "photo", required: true)
  String get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "application_count", required: false)
  int? get appCount => throw _privateConstructorUsedError;
  @JsonKey(name: "applied", required: false)
  bool? get applied => throw _privateConstructorUsedError;
  @JsonKey(name: "by", required: false)
  UserModel? get teachedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id", required: true) int id,
      @JsonKey(name: "title", required: true) String title,
      @JsonKey(name: "description", required: true) String desc,
      @JsonKey(name: "photo", required: true) String photo,
      @JsonKey(name: "application_count", required: false) int? appCount,
      @JsonKey(name: "applied", required: false) bool? applied,
      @JsonKey(name: "by", required: false) UserModel? teachedBy});

  $UserModelCopyWith<$Res>? get teachedBy;
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res> implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  final CourseModel _value;
  // ignore: unused_field
  final $Res Function(CourseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? photo = freezed,
    Object? appCount = freezed,
    Object? applied = freezed,
    Object? teachedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      appCount: appCount == freezed
          ? _value.appCount
          : appCount // ignore: cast_nullable_to_non_nullable
              as int?,
      applied: applied == freezed
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
      teachedBy: teachedBy == freezed
          ? _value.teachedBy
          : teachedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get teachedBy {
    if (_value.teachedBy == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.teachedBy!, (value) {
      return _then(_value.copyWith(teachedBy: value));
    });
  }
}

/// @nodoc
abstract class _$CourseModelCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$CourseModelCopyWith(
          _CourseModel value, $Res Function(_CourseModel) then) =
      __$CourseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id", required: true) int id,
      @JsonKey(name: "title", required: true) String title,
      @JsonKey(name: "description", required: true) String desc,
      @JsonKey(name: "photo", required: true) String photo,
      @JsonKey(name: "application_count", required: false) int? appCount,
      @JsonKey(name: "applied", required: false) bool? applied,
      @JsonKey(name: "by", required: false) UserModel? teachedBy});

  @override
  $UserModelCopyWith<$Res>? get teachedBy;
}

/// @nodoc
class __$CourseModelCopyWithImpl<$Res> extends _$CourseModelCopyWithImpl<$Res>
    implements _$CourseModelCopyWith<$Res> {
  __$CourseModelCopyWithImpl(
      _CourseModel _value, $Res Function(_CourseModel) _then)
      : super(_value, (v) => _then(v as _CourseModel));

  @override
  _CourseModel get _value => super._value as _CourseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? photo = freezed,
    Object? appCount = freezed,
    Object? applied = freezed,
    Object? teachedBy = freezed,
  }) {
    return _then(_CourseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      appCount: appCount == freezed
          ? _value.appCount
          : appCount // ignore: cast_nullable_to_non_nullable
              as int?,
      applied: applied == freezed
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
      teachedBy: teachedBy == freezed
          ? _value.teachedBy
          : teachedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseModel extends _CourseModel {
  _$_CourseModel(
      {@JsonKey(name: "id", required: true) required this.id,
      @JsonKey(name: "title", required: true) required this.title,
      @JsonKey(name: "description", required: true) required this.desc,
      @JsonKey(name: "photo", required: true) required this.photo,
      @JsonKey(name: "application_count", required: false) this.appCount,
      @JsonKey(name: "applied", required: false) this.applied,
      @JsonKey(name: "by", required: false) this.teachedBy})
      : super._();

  factory _$_CourseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CourseModelFromJson(json);

  @override
  @JsonKey(name: "id", required: true)
  final int id;
  @override
  @JsonKey(name: "title", required: true)
  final String title;
  @override
  @JsonKey(name: "description", required: true)
  final String desc;
  @override
  @JsonKey(name: "photo", required: true)
  final String photo;
  @override
  @JsonKey(name: "application_count", required: false)
  final int? appCount;
  @override
  @JsonKey(name: "applied", required: false)
  final bool? applied;
  @override
  @JsonKey(name: "by", required: false)
  final UserModel? teachedBy;

  @override
  String toString() {
    return 'CourseModel(id: $id, title: $title, desc: $desc, photo: $photo, appCount: $appCount, applied: $applied, teachedBy: $teachedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.appCount, appCount) ||
                const DeepCollectionEquality()
                    .equals(other.appCount, appCount)) &&
            (identical(other.applied, applied) ||
                const DeepCollectionEquality()
                    .equals(other.applied, applied)) &&
            (identical(other.teachedBy, teachedBy) ||
                const DeepCollectionEquality()
                    .equals(other.teachedBy, teachedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(appCount) ^
      const DeepCollectionEquality().hash(applied) ^
      const DeepCollectionEquality().hash(teachedBy);

  @JsonKey(ignore: true)
  @override
  _$CourseModelCopyWith<_CourseModel> get copyWith =>
      __$CourseModelCopyWithImpl<_CourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CourseModelToJson(this);
  }
}

abstract class _CourseModel extends CourseModel {
  factory _CourseModel(
          {@JsonKey(name: "id", required: true) required int id,
          @JsonKey(name: "title", required: true) required String title,
          @JsonKey(name: "description", required: true) required String desc,
          @JsonKey(name: "photo", required: true) required String photo,
          @JsonKey(name: "application_count", required: false) int? appCount,
          @JsonKey(name: "applied", required: false) bool? applied,
          @JsonKey(name: "by", required: false) UserModel? teachedBy}) =
      _$_CourseModel;
  _CourseModel._() : super._();

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$_CourseModel.fromJson;

  @override
  @JsonKey(name: "id", required: true)
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "title", required: true)
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "description", required: true)
  String get desc => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "photo", required: true)
  String get photo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "application_count", required: false)
  int? get appCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "applied", required: false)
  bool? get applied => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "by", required: false)
  UserModel? get teachedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourseModelCopyWith<_CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
