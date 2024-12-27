// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromGallery,
    required TResult Function() getUserData,
    required TResult Function(UserModel user) updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? getUserData,
    TResult? Function(UserModel user)? updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromGallery,
    TResult Function()? getUserData,
    TResult Function(UserModel user)? updateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PickImageFromGalleryImplCopyWith<$Res> {
  factory _$$PickImageFromGalleryImplCopyWith(_$PickImageFromGalleryImpl value,
          $Res Function(_$PickImageFromGalleryImpl) then) =
      __$$PickImageFromGalleryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageFromGalleryImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$PickImageFromGalleryImpl>
    implements _$$PickImageFromGalleryImplCopyWith<$Res> {
  __$$PickImageFromGalleryImplCopyWithImpl(_$PickImageFromGalleryImpl _value,
      $Res Function(_$PickImageFromGalleryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PickImageFromGalleryImpl implements PickImageFromGallery {
  const _$PickImageFromGalleryImpl();

  @override
  String toString() {
    return 'ProfileEvent.pickImageFromGallery()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageFromGalleryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromGallery,
    required TResult Function() getUserData,
    required TResult Function(UserModel user) updateUserData,
  }) {
    return pickImageFromGallery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? getUserData,
    TResult? Function(UserModel user)? updateUserData,
  }) {
    return pickImageFromGallery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromGallery,
    TResult Function()? getUserData,
    TResult Function(UserModel user)? updateUserData,
    required TResult orElse(),
  }) {
    if (pickImageFromGallery != null) {
      return pickImageFromGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return pickImageFromGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return pickImageFromGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (pickImageFromGallery != null) {
      return pickImageFromGallery(this);
    }
    return orElse();
  }
}

abstract class PickImageFromGallery implements ProfileEvent {
  const factory PickImageFromGallery() = _$PickImageFromGalleryImpl;
}

/// @nodoc
abstract class _$$GetUserDataImplCopyWith<$Res> {
  factory _$$GetUserDataImplCopyWith(
          _$GetUserDataImpl value, $Res Function(_$GetUserDataImpl) then) =
      __$$GetUserDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDataImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserDataImpl>
    implements _$$GetUserDataImplCopyWith<$Res> {
  __$$GetUserDataImplCopyWithImpl(
      _$GetUserDataImpl _value, $Res Function(_$GetUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserDataImpl implements _GetUserData {
  const _$GetUserDataImpl();

  @override
  String toString() {
    return 'ProfileEvent.getUserData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromGallery,
    required TResult Function() getUserData,
    required TResult Function(UserModel user) updateUserData,
  }) {
    return getUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? getUserData,
    TResult? Function(UserModel user)? updateUserData,
  }) {
    return getUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromGallery,
    TResult Function()? getUserData,
    TResult Function(UserModel user)? updateUserData,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class _GetUserData implements ProfileEvent {
  const factory _GetUserData() = _$GetUserDataImpl;
}

/// @nodoc
abstract class _$$UpdateUserDataImplCopyWith<$Res> {
  factory _$$UpdateUserDataImplCopyWith(_$UpdateUserDataImpl value,
          $Res Function(_$UpdateUserDataImpl) then) =
      __$$UpdateUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$UpdateUserDataImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateUserDataImpl>
    implements _$$UpdateUserDataImplCopyWith<$Res> {
  __$$UpdateUserDataImplCopyWithImpl(
      _$UpdateUserDataImpl _value, $Res Function(_$UpdateUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UpdateUserDataImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$UpdateUserDataImpl implements _UpdateUserData {
  const _$UpdateUserDataImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileEvent.updateUserData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserDataImplCopyWith<_$UpdateUserDataImpl> get copyWith =>
      __$$UpdateUserDataImplCopyWithImpl<_$UpdateUserDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromGallery,
    required TResult Function() getUserData,
    required TResult Function(UserModel user) updateUserData,
  }) {
    return updateUserData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? getUserData,
    TResult? Function(UserModel user)? updateUserData,
  }) {
    return updateUserData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromGallery,
    TResult Function()? getUserData,
    TResult Function(UserModel user)? updateUserData,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return updateUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return updateUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserData implements ProfileEvent {
  const factory _UpdateUserData(final UserModel user) = _$UpdateUserDataImpl;

  UserModel get user;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserDataImplCopyWith<_$UpdateUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(String? paths, String base) loadedState,
    required TResult Function(UserModel user) userLoadedState,
    required TResult Function() loadingState,
    required TResult Function() userUpdatedState,
    required TResult Function(String error) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(String? paths, String base)? loadedState,
    TResult? Function(UserModel user)? userLoadedState,
    TResult? Function()? loadingState,
    TResult? Function()? userUpdatedState,
    TResult? Function(String error)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String? paths, String base)? loadedState,
    TResult Function(UserModel user)? userLoadedState,
    TResult Function()? loadingState,
    TResult Function()? userUpdatedState,
    TResult Function(String error)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(_UserLoadedState value) userLoadedState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(UserUpdatedState value) userUpdatedState,
    required TResult Function(ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(_UserLoadedState value)? userLoadedState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(UserUpdatedState value)? userUpdatedState,
    TResult? Function(ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(_UserLoadedState value)? userLoadedState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(UserUpdatedState value)? userUpdatedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ProfileState.initialState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(String? paths, String base) loadedState,
    required TResult Function(UserModel user) userLoadedState,
    required TResult Function() loadingState,
    required TResult Function() userUpdatedState,
    required TResult Function(String error) errorState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(String? paths, String base)? loadedState,
    TResult? Function(UserModel user)? userLoadedState,
    TResult? Function()? loadingState,
    TResult? Function()? userUpdatedState,
    TResult? Function(String error)? errorState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String? paths, String base)? loadedState,
    TResult Function(UserModel user)? userLoadedState,
    TResult Function()? loadingState,
    TResult Function()? userUpdatedState,
    TResult Function(String error)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(_UserLoadedState value) userLoadedState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(UserUpdatedState value) userUpdatedState,
    required TResult Function(ErrorState value) errorState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(_UserLoadedState value)? userLoadedState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(UserUpdatedState value)? userUpdatedState,
    TResult? Function(ErrorState value)? errorState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(_UserLoadedState value)? userLoadedState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(UserUpdatedState value)? userUpdatedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class InitialState implements ProfileState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? paths, String base});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paths = freezed,
    Object? base = null,
  }) {
    return _then(_$LoadedStateImpl(
      freezed == paths
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as String?,
      null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements LoadedState {
  const _$LoadedStateImpl(this.paths, this.base);

  @override
  final String? paths;
  @override
  final String base;

  @override
  String toString() {
    return 'ProfileState.loadedState(paths: $paths, base: $base)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            (identical(other.paths, paths) || other.paths == paths) &&
            (identical(other.base, base) || other.base == base));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paths, base);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(String? paths, String base) loadedState,
    required TResult Function(UserModel user) userLoadedState,
    required TResult Function() loadingState,
    required TResult Function() userUpdatedState,
    required TResult Function(String error) errorState,
  }) {
    return loadedState(paths, base);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(String? paths, String base)? loadedState,
    TResult? Function(UserModel user)? userLoadedState,
    TResult? Function()? loadingState,
    TResult? Function()? userUpdatedState,
    TResult? Function(String error)? errorState,
  }) {
    return loadedState?.call(paths, base);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String? paths, String base)? loadedState,
    TResult Function(UserModel user)? userLoadedState,
    TResult Function()? loadingState,
    TResult Function()? userUpdatedState,
    TResult Function(String error)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(paths, base);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(_UserLoadedState value) userLoadedState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(UserUpdatedState value) userUpdatedState,
    required TResult Function(ErrorState value) errorState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(_UserLoadedState value)? userLoadedState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(UserUpdatedState value)? userUpdatedState,
    TResult? Function(ErrorState value)? errorState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(_UserLoadedState value)? userLoadedState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(UserUpdatedState value)? userUpdatedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements ProfileState {
  const factory LoadedState(final String? paths, final String base) =
      _$LoadedStateImpl;

  String? get paths;
  String get base;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoadedStateImplCopyWith<$Res> {
  factory _$$UserLoadedStateImplCopyWith(_$UserLoadedStateImpl value,
          $Res Function(_$UserLoadedStateImpl) then) =
      __$$UserLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$UserLoadedStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UserLoadedStateImpl>
    implements _$$UserLoadedStateImplCopyWith<$Res> {
  __$$UserLoadedStateImplCopyWithImpl(
      _$UserLoadedStateImpl _value, $Res Function(_$UserLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserLoadedStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$UserLoadedStateImpl implements _UserLoadedState {
  const _$UserLoadedStateImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileState.userLoadedState(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoadedStateImplCopyWith<_$UserLoadedStateImpl> get copyWith =>
      __$$UserLoadedStateImplCopyWithImpl<_$UserLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(String? paths, String base) loadedState,
    required TResult Function(UserModel user) userLoadedState,
    required TResult Function() loadingState,
    required TResult Function() userUpdatedState,
    required TResult Function(String error) errorState,
  }) {
    return userLoadedState(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(String? paths, String base)? loadedState,
    TResult? Function(UserModel user)? userLoadedState,
    TResult? Function()? loadingState,
    TResult? Function()? userUpdatedState,
    TResult? Function(String error)? errorState,
  }) {
    return userLoadedState?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String? paths, String base)? loadedState,
    TResult Function(UserModel user)? userLoadedState,
    TResult Function()? loadingState,
    TResult Function()? userUpdatedState,
    TResult Function(String error)? errorState,
    required TResult orElse(),
  }) {
    if (userLoadedState != null) {
      return userLoadedState(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(_UserLoadedState value) userLoadedState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(UserUpdatedState value) userUpdatedState,
    required TResult Function(ErrorState value) errorState,
  }) {
    return userLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(_UserLoadedState value)? userLoadedState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(UserUpdatedState value)? userUpdatedState,
    TResult? Function(ErrorState value)? errorState,
  }) {
    return userLoadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(_UserLoadedState value)? userLoadedState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(UserUpdatedState value)? userUpdatedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (userLoadedState != null) {
      return userLoadedState(this);
    }
    return orElse();
  }
}

abstract class _UserLoadedState implements ProfileState {
  const factory _UserLoadedState(final UserModel user) = _$UserLoadedStateImpl;

  UserModel get user;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoadedStateImplCopyWith<_$UserLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'ProfileState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(String? paths, String base) loadedState,
    required TResult Function(UserModel user) userLoadedState,
    required TResult Function() loadingState,
    required TResult Function() userUpdatedState,
    required TResult Function(String error) errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(String? paths, String base)? loadedState,
    TResult? Function(UserModel user)? userLoadedState,
    TResult? Function()? loadingState,
    TResult? Function()? userUpdatedState,
    TResult? Function(String error)? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String? paths, String base)? loadedState,
    TResult Function(UserModel user)? userLoadedState,
    TResult Function()? loadingState,
    TResult Function()? userUpdatedState,
    TResult Function(String error)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(_UserLoadedState value) userLoadedState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(UserUpdatedState value) userUpdatedState,
    required TResult Function(ErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(_UserLoadedState value)? userLoadedState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(UserUpdatedState value)? userUpdatedState,
    TResult? Function(ErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(_UserLoadedState value)? userLoadedState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(UserUpdatedState value)? userUpdatedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements ProfileState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$UserUpdatedStateImplCopyWith<$Res> {
  factory _$$UserUpdatedStateImplCopyWith(_$UserUpdatedStateImpl value,
          $Res Function(_$UserUpdatedStateImpl) then) =
      __$$UserUpdatedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserUpdatedStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UserUpdatedStateImpl>
    implements _$$UserUpdatedStateImplCopyWith<$Res> {
  __$$UserUpdatedStateImplCopyWithImpl(_$UserUpdatedStateImpl _value,
      $Res Function(_$UserUpdatedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserUpdatedStateImpl implements UserUpdatedState {
  const _$UserUpdatedStateImpl();

  @override
  String toString() {
    return 'ProfileState.userUpdatedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserUpdatedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(String? paths, String base) loadedState,
    required TResult Function(UserModel user) userLoadedState,
    required TResult Function() loadingState,
    required TResult Function() userUpdatedState,
    required TResult Function(String error) errorState,
  }) {
    return userUpdatedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(String? paths, String base)? loadedState,
    TResult? Function(UserModel user)? userLoadedState,
    TResult? Function()? loadingState,
    TResult? Function()? userUpdatedState,
    TResult? Function(String error)? errorState,
  }) {
    return userUpdatedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String? paths, String base)? loadedState,
    TResult Function(UserModel user)? userLoadedState,
    TResult Function()? loadingState,
    TResult Function()? userUpdatedState,
    TResult Function(String error)? errorState,
    required TResult orElse(),
  }) {
    if (userUpdatedState != null) {
      return userUpdatedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(_UserLoadedState value) userLoadedState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(UserUpdatedState value) userUpdatedState,
    required TResult Function(ErrorState value) errorState,
  }) {
    return userUpdatedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(_UserLoadedState value)? userLoadedState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(UserUpdatedState value)? userUpdatedState,
    TResult? Function(ErrorState value)? errorState,
  }) {
    return userUpdatedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(_UserLoadedState value)? userLoadedState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(UserUpdatedState value)? userUpdatedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (userUpdatedState != null) {
      return userUpdatedState(this);
    }
    return orElse();
  }
}

abstract class UserUpdatedState implements ProfileState {
  const factory UserUpdatedState() = _$UserUpdatedStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ProfileState.errorState(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(String? paths, String base) loadedState,
    required TResult Function(UserModel user) userLoadedState,
    required TResult Function() loadingState,
    required TResult Function() userUpdatedState,
    required TResult Function(String error) errorState,
  }) {
    return errorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(String? paths, String base)? loadedState,
    TResult? Function(UserModel user)? userLoadedState,
    TResult? Function()? loadingState,
    TResult? Function()? userUpdatedState,
    TResult? Function(String error)? errorState,
  }) {
    return errorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String? paths, String base)? loadedState,
    TResult Function(UserModel user)? userLoadedState,
    TResult Function()? loadingState,
    TResult Function()? userUpdatedState,
    TResult Function(String error)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(_UserLoadedState value) userLoadedState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(UserUpdatedState value) userUpdatedState,
    required TResult Function(ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(_UserLoadedState value)? userLoadedState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(UserUpdatedState value)? userUpdatedState,
    TResult? Function(ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(_UserLoadedState value)? userLoadedState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(UserUpdatedState value)? userUpdatedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements ProfileState {
  const factory ErrorState(final String error) = _$ErrorStateImpl;

  String get error;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
