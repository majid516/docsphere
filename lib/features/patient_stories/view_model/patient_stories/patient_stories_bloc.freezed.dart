// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_stories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PatientStoriesEvent {
  String get doctorId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId, PatientStoriesModel story)
        addPatientStories,
    required TResult Function(String doctorId) fetchAllPatientStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId, PatientStoriesModel story)?
        addPatientStories,
    TResult? Function(String doctorId)? fetchAllPatientStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId, PatientStoriesModel story)?
        addPatientStories,
    TResult Function(String doctorId)? fetchAllPatientStories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPatientStories value) addPatientStories,
    required TResult Function(_FetchAllPatientStories value)
        fetchAllPatientStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPatientStories value)? addPatientStories,
    TResult? Function(_FetchAllPatientStories value)? fetchAllPatientStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPatientStories value)? addPatientStories,
    TResult Function(_FetchAllPatientStories value)? fetchAllPatientStories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PatientStoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientStoriesEventCopyWith<PatientStoriesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientStoriesEventCopyWith<$Res> {
  factory $PatientStoriesEventCopyWith(
          PatientStoriesEvent value, $Res Function(PatientStoriesEvent) then) =
      _$PatientStoriesEventCopyWithImpl<$Res, PatientStoriesEvent>;
  @useResult
  $Res call({String doctorId});
}

/// @nodoc
class _$PatientStoriesEventCopyWithImpl<$Res, $Val extends PatientStoriesEvent>
    implements $PatientStoriesEventCopyWith<$Res> {
  _$PatientStoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientStoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
  }) {
    return _then(_value.copyWith(
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPatientStoriesImplCopyWith<$Res>
    implements $PatientStoriesEventCopyWith<$Res> {
  factory _$$AddPatientStoriesImplCopyWith(_$AddPatientStoriesImpl value,
          $Res Function(_$AddPatientStoriesImpl) then) =
      __$$AddPatientStoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String doctorId, PatientStoriesModel story});
}

/// @nodoc
class __$$AddPatientStoriesImplCopyWithImpl<$Res>
    extends _$PatientStoriesEventCopyWithImpl<$Res, _$AddPatientStoriesImpl>
    implements _$$AddPatientStoriesImplCopyWith<$Res> {
  __$$AddPatientStoriesImplCopyWithImpl(_$AddPatientStoriesImpl _value,
      $Res Function(_$AddPatientStoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientStoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
    Object? story = null,
  }) {
    return _then(_$AddPatientStoriesImpl(
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as PatientStoriesModel,
    ));
  }
}

/// @nodoc

class _$AddPatientStoriesImpl implements _AddPatientStories {
  const _$AddPatientStoriesImpl({required this.doctorId, required this.story});

  @override
  final String doctorId;
  @override
  final PatientStoriesModel story;

  @override
  String toString() {
    return 'PatientStoriesEvent.addPatientStories(doctorId: $doctorId, story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPatientStoriesImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.story, story) || other.story == story));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId, story);

  /// Create a copy of PatientStoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPatientStoriesImplCopyWith<_$AddPatientStoriesImpl> get copyWith =>
      __$$AddPatientStoriesImplCopyWithImpl<_$AddPatientStoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId, PatientStoriesModel story)
        addPatientStories,
    required TResult Function(String doctorId) fetchAllPatientStories,
  }) {
    return addPatientStories(doctorId, story);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId, PatientStoriesModel story)?
        addPatientStories,
    TResult? Function(String doctorId)? fetchAllPatientStories,
  }) {
    return addPatientStories?.call(doctorId, story);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId, PatientStoriesModel story)?
        addPatientStories,
    TResult Function(String doctorId)? fetchAllPatientStories,
    required TResult orElse(),
  }) {
    if (addPatientStories != null) {
      return addPatientStories(doctorId, story);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPatientStories value) addPatientStories,
    required TResult Function(_FetchAllPatientStories value)
        fetchAllPatientStories,
  }) {
    return addPatientStories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPatientStories value)? addPatientStories,
    TResult? Function(_FetchAllPatientStories value)? fetchAllPatientStories,
  }) {
    return addPatientStories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPatientStories value)? addPatientStories,
    TResult Function(_FetchAllPatientStories value)? fetchAllPatientStories,
    required TResult orElse(),
  }) {
    if (addPatientStories != null) {
      return addPatientStories(this);
    }
    return orElse();
  }
}

abstract class _AddPatientStories implements PatientStoriesEvent {
  const factory _AddPatientStories(
      {required final String doctorId,
      required final PatientStoriesModel story}) = _$AddPatientStoriesImpl;

  @override
  String get doctorId;
  PatientStoriesModel get story;

  /// Create a copy of PatientStoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPatientStoriesImplCopyWith<_$AddPatientStoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllPatientStoriesImplCopyWith<$Res>
    implements $PatientStoriesEventCopyWith<$Res> {
  factory _$$FetchAllPatientStoriesImplCopyWith(
          _$FetchAllPatientStoriesImpl value,
          $Res Function(_$FetchAllPatientStoriesImpl) then) =
      __$$FetchAllPatientStoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String doctorId});
}

/// @nodoc
class __$$FetchAllPatientStoriesImplCopyWithImpl<$Res>
    extends _$PatientStoriesEventCopyWithImpl<$Res,
        _$FetchAllPatientStoriesImpl>
    implements _$$FetchAllPatientStoriesImplCopyWith<$Res> {
  __$$FetchAllPatientStoriesImplCopyWithImpl(
      _$FetchAllPatientStoriesImpl _value,
      $Res Function(_$FetchAllPatientStoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientStoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
  }) {
    return _then(_$FetchAllPatientStoriesImpl(
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAllPatientStoriesImpl implements _FetchAllPatientStories {
  const _$FetchAllPatientStoriesImpl({required this.doctorId});

  @override
  final String doctorId;

  @override
  String toString() {
    return 'PatientStoriesEvent.fetchAllPatientStories(doctorId: $doctorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllPatientStoriesImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId);

  /// Create a copy of PatientStoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllPatientStoriesImplCopyWith<_$FetchAllPatientStoriesImpl>
      get copyWith => __$$FetchAllPatientStoriesImplCopyWithImpl<
          _$FetchAllPatientStoriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId, PatientStoriesModel story)
        addPatientStories,
    required TResult Function(String doctorId) fetchAllPatientStories,
  }) {
    return fetchAllPatientStories(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId, PatientStoriesModel story)?
        addPatientStories,
    TResult? Function(String doctorId)? fetchAllPatientStories,
  }) {
    return fetchAllPatientStories?.call(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId, PatientStoriesModel story)?
        addPatientStories,
    TResult Function(String doctorId)? fetchAllPatientStories,
    required TResult orElse(),
  }) {
    if (fetchAllPatientStories != null) {
      return fetchAllPatientStories(doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPatientStories value) addPatientStories,
    required TResult Function(_FetchAllPatientStories value)
        fetchAllPatientStories,
  }) {
    return fetchAllPatientStories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPatientStories value)? addPatientStories,
    TResult? Function(_FetchAllPatientStories value)? fetchAllPatientStories,
  }) {
    return fetchAllPatientStories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPatientStories value)? addPatientStories,
    TResult Function(_FetchAllPatientStories value)? fetchAllPatientStories,
    required TResult orElse(),
  }) {
    if (fetchAllPatientStories != null) {
      return fetchAllPatientStories(this);
    }
    return orElse();
  }
}

abstract class _FetchAllPatientStories implements PatientStoriesEvent {
  const factory _FetchAllPatientStories({required final String doctorId}) =
      _$FetchAllPatientStoriesImpl;

  @override
  String get doctorId;

  /// Create a copy of PatientStoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchAllPatientStoriesImplCopyWith<_$FetchAllPatientStoriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PatientStoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initiaState,
    required TResult Function() loadingState,
    required TResult Function(List<PatientStoriesModel> stories)
        storiesLoadedState,
    required TResult Function() errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initiaState,
    TResult? Function()? loadingState,
    TResult? Function(List<PatientStoriesModel> stories)? storiesLoadedState,
    TResult? Function()? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiaState,
    TResult Function()? loadingState,
    TResult Function(List<PatientStoriesModel> stories)? storiesLoadedState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initiaState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_StoriesLoadedState value) storiesLoadedState,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initiaState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_StoriesLoadedState value)? storiesLoadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initiaState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_StoriesLoadedState value)? storiesLoadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientStoriesStateCopyWith<$Res> {
  factory $PatientStoriesStateCopyWith(
          PatientStoriesState value, $Res Function(PatientStoriesState) then) =
      _$PatientStoriesStateCopyWithImpl<$Res, PatientStoriesState>;
}

/// @nodoc
class _$PatientStoriesStateCopyWithImpl<$Res, $Val extends PatientStoriesState>
    implements $PatientStoriesStateCopyWith<$Res> {
  _$PatientStoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientStoriesState
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
    extends _$PatientStoriesStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientStoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'PatientStoriesState.initiaState()';
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
    required TResult Function() initiaState,
    required TResult Function() loadingState,
    required TResult Function(List<PatientStoriesModel> stories)
        storiesLoadedState,
    required TResult Function() errorState,
  }) {
    return initiaState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initiaState,
    TResult? Function()? loadingState,
    TResult? Function(List<PatientStoriesModel> stories)? storiesLoadedState,
    TResult? Function()? errorState,
  }) {
    return initiaState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiaState,
    TResult Function()? loadingState,
    TResult Function(List<PatientStoriesModel> stories)? storiesLoadedState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (initiaState != null) {
      return initiaState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initiaState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_StoriesLoadedState value) storiesLoadedState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initiaState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initiaState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_StoriesLoadedState value)? storiesLoadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initiaState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initiaState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_StoriesLoadedState value)? storiesLoadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initiaState != null) {
      return initiaState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements PatientStoriesState {
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
    extends _$PatientStoriesStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientStoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'PatientStoriesState.loadingState()';
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
    required TResult Function() initiaState,
    required TResult Function() loadingState,
    required TResult Function(List<PatientStoriesModel> stories)
        storiesLoadedState,
    required TResult Function() errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initiaState,
    TResult? Function()? loadingState,
    TResult? Function(List<PatientStoriesModel> stories)? storiesLoadedState,
    TResult? Function()? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiaState,
    TResult Function()? loadingState,
    TResult Function(List<PatientStoriesModel> stories)? storiesLoadedState,
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
    required TResult Function(_InitialState value) initiaState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_StoriesLoadedState value) storiesLoadedState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initiaState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_StoriesLoadedState value)? storiesLoadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initiaState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_StoriesLoadedState value)? storiesLoadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements PatientStoriesState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$StoriesLoadedStateImplCopyWith<$Res> {
  factory _$$StoriesLoadedStateImplCopyWith(_$StoriesLoadedStateImpl value,
          $Res Function(_$StoriesLoadedStateImpl) then) =
      __$$StoriesLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PatientStoriesModel> stories});
}

/// @nodoc
class __$$StoriesLoadedStateImplCopyWithImpl<$Res>
    extends _$PatientStoriesStateCopyWithImpl<$Res, _$StoriesLoadedStateImpl>
    implements _$$StoriesLoadedStateImplCopyWith<$Res> {
  __$$StoriesLoadedStateImplCopyWithImpl(_$StoriesLoadedStateImpl _value,
      $Res Function(_$StoriesLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientStoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
  }) {
    return _then(_$StoriesLoadedStateImpl(
      null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<PatientStoriesModel>,
    ));
  }
}

/// @nodoc

class _$StoriesLoadedStateImpl implements _StoriesLoadedState {
  const _$StoriesLoadedStateImpl(final List<PatientStoriesModel> stories)
      : _stories = stories;

  final List<PatientStoriesModel> _stories;
  @override
  List<PatientStoriesModel> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'PatientStoriesState.storiesLoadedState(stories: $stories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stories));

  /// Create a copy of PatientStoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesLoadedStateImplCopyWith<_$StoriesLoadedStateImpl> get copyWith =>
      __$$StoriesLoadedStateImplCopyWithImpl<_$StoriesLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initiaState,
    required TResult Function() loadingState,
    required TResult Function(List<PatientStoriesModel> stories)
        storiesLoadedState,
    required TResult Function() errorState,
  }) {
    return storiesLoadedState(stories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initiaState,
    TResult? Function()? loadingState,
    TResult? Function(List<PatientStoriesModel> stories)? storiesLoadedState,
    TResult? Function()? errorState,
  }) {
    return storiesLoadedState?.call(stories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiaState,
    TResult Function()? loadingState,
    TResult Function(List<PatientStoriesModel> stories)? storiesLoadedState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (storiesLoadedState != null) {
      return storiesLoadedState(stories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initiaState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_StoriesLoadedState value) storiesLoadedState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return storiesLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initiaState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_StoriesLoadedState value)? storiesLoadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return storiesLoadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initiaState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_StoriesLoadedState value)? storiesLoadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (storiesLoadedState != null) {
      return storiesLoadedState(this);
    }
    return orElse();
  }
}

abstract class _StoriesLoadedState implements PatientStoriesState {
  const factory _StoriesLoadedState(final List<PatientStoriesModel> stories) =
      _$StoriesLoadedStateImpl;

  List<PatientStoriesModel> get stories;

  /// Create a copy of PatientStoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoriesLoadedStateImplCopyWith<_$StoriesLoadedStateImpl> get copyWith =>
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
    extends _$PatientStoriesStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientStoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'PatientStoriesState.errorState()';
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
    required TResult Function() initiaState,
    required TResult Function() loadingState,
    required TResult Function(List<PatientStoriesModel> stories)
        storiesLoadedState,
    required TResult Function() errorState,
  }) {
    return errorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initiaState,
    TResult? Function()? loadingState,
    TResult? Function(List<PatientStoriesModel> stories)? storiesLoadedState,
    TResult? Function()? errorState,
  }) {
    return errorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiaState,
    TResult Function()? loadingState,
    TResult Function(List<PatientStoriesModel> stories)? storiesLoadedState,
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
    required TResult Function(_InitialState value) initiaState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_StoriesLoadedState value) storiesLoadedState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initiaState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_StoriesLoadedState value)? storiesLoadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initiaState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_StoriesLoadedState value)? storiesLoadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements PatientStoriesState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
