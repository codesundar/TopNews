// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsResponseEntity {
  String? get nextPage => throw _privateConstructorUsedError;
  List<NewsEntity> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsResponseEntityCopyWith<NewsResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseEntityCopyWith<$Res> {
  factory $NewsResponseEntityCopyWith(
          NewsResponseEntity value, $Res Function(NewsResponseEntity) then) =
      _$NewsResponseEntityCopyWithImpl<$Res, NewsResponseEntity>;
  @useResult
  $Res call({String? nextPage, List<NewsEntity> items});
}

/// @nodoc
class _$NewsResponseEntityCopyWithImpl<$Res, $Val extends NewsResponseEntity>
    implements $NewsResponseEntityCopyWith<$Res> {
  _$NewsResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsResponseEntityImplCopyWith<$Res>
    implements $NewsResponseEntityCopyWith<$Res> {
  factory _$$NewsResponseEntityImplCopyWith(_$NewsResponseEntityImpl value,
          $Res Function(_$NewsResponseEntityImpl) then) =
      __$$NewsResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nextPage, List<NewsEntity> items});
}

/// @nodoc
class __$$NewsResponseEntityImplCopyWithImpl<$Res>
    extends _$NewsResponseEntityCopyWithImpl<$Res, _$NewsResponseEntityImpl>
    implements _$$NewsResponseEntityImplCopyWith<$Res> {
  __$$NewsResponseEntityImplCopyWithImpl(_$NewsResponseEntityImpl _value,
      $Res Function(_$NewsResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? items = null,
  }) {
    return _then(_$NewsResponseEntityImpl(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
    ));
  }
}

/// @nodoc

class _$NewsResponseEntityImpl extends _NewsResponseEntity {
  const _$NewsResponseEntityImpl(
      {required this.nextPage, required final List<NewsEntity> items})
      : _items = items,
        super._();

  @override
  final String? nextPage;
  final List<NewsEntity> _items;
  @override
  List<NewsEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'NewsResponseEntity(nextPage: $nextPage, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsResponseEntityImpl &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, nextPage, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsResponseEntityImplCopyWith<_$NewsResponseEntityImpl> get copyWith =>
      __$$NewsResponseEntityImplCopyWithImpl<_$NewsResponseEntityImpl>(
          this, _$identity);
}

abstract class _NewsResponseEntity extends NewsResponseEntity {
  const factory _NewsResponseEntity(
      {required final String? nextPage,
      required final List<NewsEntity> items}) = _$NewsResponseEntityImpl;
  const _NewsResponseEntity._() : super._();

  @override
  String? get nextPage;
  @override
  List<NewsEntity> get items;
  @override
  @JsonKey(ignore: true)
  _$$NewsResponseEntityImplCopyWith<_$NewsResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsEntity {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEntityCopyWith<NewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntityCopyWith<$Res> {
  factory $NewsEntityCopyWith(
          NewsEntity value, $Res Function(NewsEntity) then) =
      _$NewsEntityCopyWithImpl<$Res, NewsEntity>;
  @useResult
  $Res call({String title, String description, String imageURL, String id});
}

/// @nodoc
class _$NewsEntityCopyWithImpl<$Res, $Val extends NewsEntity>
    implements $NewsEntityCopyWith<$Res> {
  _$NewsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? imageURL = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsEntityImplCopyWith<$Res>
    implements $NewsEntityCopyWith<$Res> {
  factory _$$NewsEntityImplCopyWith(
          _$NewsEntityImpl value, $Res Function(_$NewsEntityImpl) then) =
      __$$NewsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, String imageURL, String id});
}

/// @nodoc
class __$$NewsEntityImplCopyWithImpl<$Res>
    extends _$NewsEntityCopyWithImpl<$Res, _$NewsEntityImpl>
    implements _$$NewsEntityImplCopyWith<$Res> {
  __$$NewsEntityImplCopyWithImpl(
      _$NewsEntityImpl _value, $Res Function(_$NewsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? imageURL = null,
    Object? id = null,
  }) {
    return _then(_$NewsEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewsEntityImpl extends _NewsEntity {
  const _$NewsEntityImpl(
      {required this.title,
      required this.description,
      required this.imageURL,
      required this.id})
      : super._();

  @override
  final String title;
  @override
  final String description;
  @override
  final String imageURL;
  @override
  final String id;

  @override
  String toString() {
    return 'NewsEntity(title: $title, description: $description, imageURL: $imageURL, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, imageURL, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsEntityImplCopyWith<_$NewsEntityImpl> get copyWith =>
      __$$NewsEntityImplCopyWithImpl<_$NewsEntityImpl>(this, _$identity);
}

abstract class _NewsEntity extends NewsEntity {
  const factory _NewsEntity(
      {required final String title,
      required final String description,
      required final String imageURL,
      required final String id}) = _$NewsEntityImpl;
  const _NewsEntity._() : super._();

  @override
  String get title;
  @override
  String get description;
  @override
  String get imageURL;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$NewsEntityImplCopyWith<_$NewsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
