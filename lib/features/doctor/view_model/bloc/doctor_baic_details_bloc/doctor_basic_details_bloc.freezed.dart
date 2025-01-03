// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_basic_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorBasicDetailsEvent {
  String get category => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) fechBasicDoctorDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? fechBasicDoctorDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? fechBasicDoctorDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FechBasicDoctorDetails value)
        fechBasicDoctorDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FechBasicDoctorDetails value)? fechBasicDoctorDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FechBasicDoctorDetails value)? fechBasicDoctorDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DoctorBasicDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorBasicDetailsEventCopyWith<DoctorBasicDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorBasicDetailsEventCopyWith<$Res> {
  factory $DoctorBasicDetailsEventCopyWith(DoctorBasicDetailsEvent value,
          $Res Function(DoctorBasicDetailsEvent) then) =
      _$DoctorBasicDetailsEventCopyWithImpl<$Res, DoctorBasicDetailsEvent>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class _$DoctorBasicDetailsEventCopyWithImpl<$Res,
        $Val extends DoctorBasicDetailsEvent>
    implements $DoctorBasicDetailsEventCopyWith<$Res> {
  _$DoctorBasicDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorBasicDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FechBasicDoctorDetailsImplCopyWith<$Res>
    implements $DoctorBasicDetailsEventCopyWith<$Res> {
  factory _$$FechBasicDoctorDetailsImplCopyWith(
          _$FechBasicDoctorDetailsImpl value,
          $Res Function(_$FechBasicDoctorDetailsImpl) then) =
      __$$FechBasicDoctorDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FechBasicDoctorDetailsImplCopyWithImpl<$Res>
    extends _$DoctorBasicDetailsEventCopyWithImpl<$Res,
        _$FechBasicDoctorDetailsImpl>
    implements _$$FechBasicDoctorDetailsImplCopyWith<$Res> {
  __$$FechBasicDoctorDetailsImplCopyWithImpl(
      _$FechBasicDoctorDetailsImpl _value,
      $Res Function(_$FechBasicDoctorDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorBasicDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FechBasicDoctorDetailsImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FechBasicDoctorDetailsImpl implements _FechBasicDoctorDetails {
  const _$FechBasicDoctorDetailsImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'DoctorBasicDetailsEvent.fechBasicDoctorDetails(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FechBasicDoctorDetailsImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of DoctorBasicDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FechBasicDoctorDetailsImplCopyWith<_$FechBasicDoctorDetailsImpl>
      get copyWith => __$$FechBasicDoctorDetailsImplCopyWithImpl<
          _$FechBasicDoctorDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) fechBasicDoctorDetails,
  }) {
    return fechBasicDoctorDetails(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? fechBasicDoctorDetails,
  }) {
    return fechBasicDoctorDetails?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? fechBasicDoctorDetails,
    required TResult orElse(),
  }) {
    if (fechBasicDoctorDetails != null) {
      return fechBasicDoctorDetails(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FechBasicDoctorDetails value)
        fechBasicDoctorDetails,
  }) {
    return fechBasicDoctorDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FechBasicDoctorDetails value)? fechBasicDoctorDetails,
  }) {
    return fechBasicDoctorDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FechBasicDoctorDetails value)? fechBasicDoctorDetails,
    required TResult orElse(),
  }) {
    if (fechBasicDoctorDetails != null) {
      return fechBasicDoctorDetails(this);
    }
    return orElse();
  }
}

abstract class _FechBasicDoctorDetails implements DoctorBasicDetailsEvent {
  const factory _FechBasicDoctorDetails(final String category) =
      _$FechBasicDoctorDetailsImpl;

  @override
  String get category;

  /// Create a copy of DoctorBasicDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FechBasicDoctorDetailsImplCopyWith<_$FechBasicDoctorDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorBasicDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<BasicDoctorModel> doctors)
        basicDetaisLoadedState,
    required TResult Function() errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<BasicDoctorModel> doctors)? basicDetaisLoadedState,
    TResult? Function()? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<BasicDoctorModel> doctors)? basicDetaisLoadedState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedState value) basicDetaisLoadedState,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedState value)? basicDetaisLoadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedState value)? basicDetaisLoadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorBasicDetailsStateCopyWith<$Res> {
  factory $DoctorBasicDetailsStateCopyWith(DoctorBasicDetailsState value,
          $Res Function(DoctorBasicDetailsState) then) =
      _$DoctorBasicDetailsStateCopyWithImpl<$Res, DoctorBasicDetailsState>;
}

/// @nodoc
class _$DoctorBasicDetailsStateCopyWithImpl<$Res,
        $Val extends DoctorBasicDetailsState>
    implements $DoctorBasicDetailsStateCopyWith<$Res> {
  _$DoctorBasicDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorBasicDetailsState
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
    extends _$DoctorBasicDetailsStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorBasicDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'DoctorBasicDetailsState.initialState()';
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
    required TResult Function() loadingState,
    required TResult Function(List<BasicDoctorModel> doctors)
        basicDetaisLoadedState,
    required TResult Function() errorState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<BasicDoctorModel> doctors)? basicDetaisLoadedState,
    TResult? Function()? errorState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<BasicDoctorModel> doctors)? basicDetaisLoadedState,
    TResult Function()? errorState,
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
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedState value) basicDetaisLoadedState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedState value)? basicDetaisLoadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedState value)? basicDetaisLoadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements DoctorBasicDetailsState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$DoctorBasicDetailsStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorBasicDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'DoctorBasicDetailsState.loadingState()';
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
    required TResult Function() loadingState,
    required TResult Function(List<BasicDoctorModel> doctors)
        basicDetaisLoadedState,
    required TResult Function() errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<BasicDoctorModel> doctors)? basicDetaisLoadedState,
    TResult? Function()? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<BasicDoctorModel> doctors)? basicDetaisLoadedState,
    TResult Function()? errorState,
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
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedState value) basicDetaisLoadedState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedState value)? basicDetaisLoadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedState value)? basicDetaisLoadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements DoctorBasicDetailsState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BasicDoctorModel> doctors});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$DoctorBasicDetailsStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorBasicDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
  }) {
    return _then(_$LoadedStateImpl(
      null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<BasicDoctorModel>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements _LoadedState {
  const _$LoadedStateImpl(final List<BasicDoctorModel> doctors)
      : _doctors = doctors;

  final List<BasicDoctorModel> _doctors;
  @override
  List<BasicDoctorModel> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'DoctorBasicDetailsState.basicDetaisLoadedState(doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doctors));

  /// Create a copy of DoctorBasicDetailsState
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
    required TResult Function() loadingState,
    required TResult Function(List<BasicDoctorModel> doctors)
        basicDetaisLoadedState,
    required TResult Function() errorState,
  }) {
    return basicDetaisLoadedState(doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<BasicDoctorModel> doctors)? basicDetaisLoadedState,
    TResult? Function()? errorState,
  }) {
    return basicDetaisLoadedState?.call(doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<BasicDoctorModel> doctors)? basicDetaisLoadedState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (basicDetaisLoadedState != null) {
      return basicDetaisLoadedState(doctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedState value) basicDetaisLoadedState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return basicDetaisLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedState value)? basicDetaisLoadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return basicDetaisLoadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedState value)? basicDetaisLoadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (basicDetaisLoadedState != null) {
      return basicDetaisLoadedState(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements DoctorBasicDetailsState {
  const factory _LoadedState(final List<BasicDoctorModel> doctors) =
      _$LoadedStateImpl;

  List<BasicDoctorModel> get doctors;

  /// Create a copy of DoctorBasicDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$DoctorBasicDetailsStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorBasicDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'DoctorBasicDetailsState.errorState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<BasicDoctorModel> doctors)
        basicDetaisLoadedState,
    required TResult Function() errorState,
  }) {
    return errorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<BasicDoctorModel> doctors)? basicDetaisLoadedState,
    TResult? Function()? errorState,
  }) {
    return errorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<BasicDoctorModel> doctors)? basicDetaisLoadedState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedState value) basicDetaisLoadedState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedState value)? basicDetaisLoadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedState value)? basicDetaisLoadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements DoctorBasicDetailsState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
