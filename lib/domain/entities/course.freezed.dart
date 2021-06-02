// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseTearOff {
  const _$CourseTearOff();

  _Course call(
      {required int id,
      required String title,
      required String desc,
      required String photo,
      int? appCount,
      bool? applied,
      User? teachedBy}) {
    return _Course(
      id: id,
      title: title,
      desc: desc,
      photo: photo,
      appCount: appCount,
      applied: applied,
      teachedBy: teachedBy,
    );
  }
}

/// @nodoc
const $Course = _$CourseTearOff();

/// @nodoc
mixin _$Course {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  int? get appCount => throw _privateConstructorUsedError;
  bool? get applied => throw _privateConstructorUsedError;
  User? get teachedBy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String desc,
      String photo,
      int? appCount,
      bool? applied,
      User? teachedBy});

  $UserCopyWith<$Res>? get teachedBy;
}

/// @nodoc
class _$CourseCopyWithImpl<$Res> implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  final Course _value;
  // ignore: unused_field
  final $Res Function(Course) _then;

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
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get teachedBy {
    if (_value.teachedBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.teachedBy!, (value) {
      return _then(_value.copyWith(teachedBy: value));
    });
  }
}

/// @nodoc
abstract class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) then) =
      __$CourseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String desc,
      String photo,
      int? appCount,
      bool? applied,
      User? teachedBy});

  @override
  $UserCopyWith<$Res>? get teachedBy;
}

/// @nodoc
class __$CourseCopyWithImpl<$Res> extends _$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(_Course _value, $Res Function(_Course) _then)
      : super(_value, (v) => _then(v as _Course));

  @override
  _Course get _value => super._value as _Course;

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
    return _then(_Course(
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
              as User?,
    ));
  }
}

/// @nodoc

class _$_Course extends _Course {
  _$_Course(
      {required this.id,
      required this.title,
      required this.desc,
      required this.photo,
      this.appCount,
      this.applied,
      this.teachedBy})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String desc;
  @override
  final String photo;
  @override
  final int? appCount;
  @override
  final bool? applied;
  @override
  final User? teachedBy;

  @override
  String toString() {
    return 'Course(id: $id, title: $title, desc: $desc, photo: $photo, appCount: $appCount, applied: $applied, teachedBy: $teachedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Course &&
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
  _$CourseCopyWith<_Course> get copyWith =>
      __$CourseCopyWithImpl<_Course>(this, _$identity);
}

abstract class _Course extends Course {
  factory _Course(
      {required int id,
      required String title,
      required String desc,
      required String photo,
      int? appCount,
      bool? applied,
      User? teachedBy}) = _$_Course;
  _Course._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get desc => throw _privateConstructorUsedError;
  @override
  String get photo => throw _privateConstructorUsedError;
  @override
  int? get appCount => throw _privateConstructorUsedError;
  @override
  bool? get applied => throw _privateConstructorUsedError;
  @override
  User? get teachedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourseCopyWith<_Course> get copyWith => throw _privateConstructorUsedError;
}
