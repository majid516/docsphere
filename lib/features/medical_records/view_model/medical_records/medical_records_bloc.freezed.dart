// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_records_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MedicalRecordsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecordModel record) addMedicalRecords,
    required TResult Function() fechAllMedicalRecords,
    required TResult Function(String id) deleteMedicalRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecordModel record)? addMedicalRecords,
    TResult? Function()? fechAllMedicalRecords,
    TResult? Function(String id)? deleteMedicalRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecordModel record)? addMedicalRecords,
    TResult Function()? fechAllMedicalRecords,
    TResult Function(String id)? deleteMedicalRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMedicalRecords value) addMedicalRecords,
    required TResult Function(_FechAllMedicalRecords value)
        fechAllMedicalRecords,
    required TResult Function(_DeleteMedicalRecord value) deleteMedicalRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMedicalRecords value)? addMedicalRecords,
    TResult? Function(_FechAllMedicalRecords value)? fechAllMedicalRecords,
    TResult? Function(_DeleteMedicalRecord value)? deleteMedicalRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMedicalRecords value)? addMedicalRecords,
    TResult Function(_FechAllMedicalRecords value)? fechAllMedicalRecords,
    TResult Function(_DeleteMedicalRecord value)? deleteMedicalRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalRecordsEventCopyWith<$Res> {
  factory $MedicalRecordsEventCopyWith(
          MedicalRecordsEvent value, $Res Function(MedicalRecordsEvent) then) =
      _$MedicalRecordsEventCopyWithImpl<$Res, MedicalRecordsEvent>;
}

/// @nodoc
class _$MedicalRecordsEventCopyWithImpl<$Res, $Val extends MedicalRecordsEvent>
    implements $MedicalRecordsEventCopyWith<$Res> {
  _$MedicalRecordsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicalRecordsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddMedicalRecordsImplCopyWith<$Res> {
  factory _$$AddMedicalRecordsImplCopyWith(_$AddMedicalRecordsImpl value,
          $Res Function(_$AddMedicalRecordsImpl) then) =
      __$$AddMedicalRecordsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecordModel record});
}

/// @nodoc
class __$$AddMedicalRecordsImplCopyWithImpl<$Res>
    extends _$MedicalRecordsEventCopyWithImpl<$Res, _$AddMedicalRecordsImpl>
    implements _$$AddMedicalRecordsImplCopyWith<$Res> {
  __$$AddMedicalRecordsImplCopyWithImpl(_$AddMedicalRecordsImpl _value,
      $Res Function(_$AddMedicalRecordsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalRecordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
  }) {
    return _then(_$AddMedicalRecordsImpl(
      null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel,
    ));
  }
}

/// @nodoc

class _$AddMedicalRecordsImpl implements _AddMedicalRecords {
  const _$AddMedicalRecordsImpl(this.record);

  @override
  final RecordModel record;

  @override
  String toString() {
    return 'MedicalRecordsEvent.addMedicalRecords(record: $record)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMedicalRecordsImpl &&
            (identical(other.record, record) || other.record == record));
  }

  @override
  int get hashCode => Object.hash(runtimeType, record);

  /// Create a copy of MedicalRecordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMedicalRecordsImplCopyWith<_$AddMedicalRecordsImpl> get copyWith =>
      __$$AddMedicalRecordsImplCopyWithImpl<_$AddMedicalRecordsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecordModel record) addMedicalRecords,
    required TResult Function() fechAllMedicalRecords,
    required TResult Function(String id) deleteMedicalRecord,
  }) {
    return addMedicalRecords(record);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecordModel record)? addMedicalRecords,
    TResult? Function()? fechAllMedicalRecords,
    TResult? Function(String id)? deleteMedicalRecord,
  }) {
    return addMedicalRecords?.call(record);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecordModel record)? addMedicalRecords,
    TResult Function()? fechAllMedicalRecords,
    TResult Function(String id)? deleteMedicalRecord,
    required TResult orElse(),
  }) {
    if (addMedicalRecords != null) {
      return addMedicalRecords(record);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMedicalRecords value) addMedicalRecords,
    required TResult Function(_FechAllMedicalRecords value)
        fechAllMedicalRecords,
    required TResult Function(_DeleteMedicalRecord value) deleteMedicalRecord,
  }) {
    return addMedicalRecords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMedicalRecords value)? addMedicalRecords,
    TResult? Function(_FechAllMedicalRecords value)? fechAllMedicalRecords,
    TResult? Function(_DeleteMedicalRecord value)? deleteMedicalRecord,
  }) {
    return addMedicalRecords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMedicalRecords value)? addMedicalRecords,
    TResult Function(_FechAllMedicalRecords value)? fechAllMedicalRecords,
    TResult Function(_DeleteMedicalRecord value)? deleteMedicalRecord,
    required TResult orElse(),
  }) {
    if (addMedicalRecords != null) {
      return addMedicalRecords(this);
    }
    return orElse();
  }
}

abstract class _AddMedicalRecords implements MedicalRecordsEvent {
  const factory _AddMedicalRecords(final RecordModel record) =
      _$AddMedicalRecordsImpl;

  RecordModel get record;

  /// Create a copy of MedicalRecordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMedicalRecordsImplCopyWith<_$AddMedicalRecordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FechAllMedicalRecordsImplCopyWith<$Res> {
  factory _$$FechAllMedicalRecordsImplCopyWith(
          _$FechAllMedicalRecordsImpl value,
          $Res Function(_$FechAllMedicalRecordsImpl) then) =
      __$$FechAllMedicalRecordsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FechAllMedicalRecordsImplCopyWithImpl<$Res>
    extends _$MedicalRecordsEventCopyWithImpl<$Res, _$FechAllMedicalRecordsImpl>
    implements _$$FechAllMedicalRecordsImplCopyWith<$Res> {
  __$$FechAllMedicalRecordsImplCopyWithImpl(_$FechAllMedicalRecordsImpl _value,
      $Res Function(_$FechAllMedicalRecordsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalRecordsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FechAllMedicalRecordsImpl implements _FechAllMedicalRecords {
  const _$FechAllMedicalRecordsImpl();

  @override
  String toString() {
    return 'MedicalRecordsEvent.fechAllMedicalRecords()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FechAllMedicalRecordsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecordModel record) addMedicalRecords,
    required TResult Function() fechAllMedicalRecords,
    required TResult Function(String id) deleteMedicalRecord,
  }) {
    return fechAllMedicalRecords();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecordModel record)? addMedicalRecords,
    TResult? Function()? fechAllMedicalRecords,
    TResult? Function(String id)? deleteMedicalRecord,
  }) {
    return fechAllMedicalRecords?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecordModel record)? addMedicalRecords,
    TResult Function()? fechAllMedicalRecords,
    TResult Function(String id)? deleteMedicalRecord,
    required TResult orElse(),
  }) {
    if (fechAllMedicalRecords != null) {
      return fechAllMedicalRecords();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMedicalRecords value) addMedicalRecords,
    required TResult Function(_FechAllMedicalRecords value)
        fechAllMedicalRecords,
    required TResult Function(_DeleteMedicalRecord value) deleteMedicalRecord,
  }) {
    return fechAllMedicalRecords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMedicalRecords value)? addMedicalRecords,
    TResult? Function(_FechAllMedicalRecords value)? fechAllMedicalRecords,
    TResult? Function(_DeleteMedicalRecord value)? deleteMedicalRecord,
  }) {
    return fechAllMedicalRecords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMedicalRecords value)? addMedicalRecords,
    TResult Function(_FechAllMedicalRecords value)? fechAllMedicalRecords,
    TResult Function(_DeleteMedicalRecord value)? deleteMedicalRecord,
    required TResult orElse(),
  }) {
    if (fechAllMedicalRecords != null) {
      return fechAllMedicalRecords(this);
    }
    return orElse();
  }
}

abstract class _FechAllMedicalRecords implements MedicalRecordsEvent {
  const factory _FechAllMedicalRecords() = _$FechAllMedicalRecordsImpl;
}

/// @nodoc
abstract class _$$DeleteMedicalRecordImplCopyWith<$Res> {
  factory _$$DeleteMedicalRecordImplCopyWith(_$DeleteMedicalRecordImpl value,
          $Res Function(_$DeleteMedicalRecordImpl) then) =
      __$$DeleteMedicalRecordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteMedicalRecordImplCopyWithImpl<$Res>
    extends _$MedicalRecordsEventCopyWithImpl<$Res, _$DeleteMedicalRecordImpl>
    implements _$$DeleteMedicalRecordImplCopyWith<$Res> {
  __$$DeleteMedicalRecordImplCopyWithImpl(_$DeleteMedicalRecordImpl _value,
      $Res Function(_$DeleteMedicalRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalRecordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteMedicalRecordImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMedicalRecordImpl implements _DeleteMedicalRecord {
  const _$DeleteMedicalRecordImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MedicalRecordsEvent.deleteMedicalRecord(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMedicalRecordImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MedicalRecordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMedicalRecordImplCopyWith<_$DeleteMedicalRecordImpl> get copyWith =>
      __$$DeleteMedicalRecordImplCopyWithImpl<_$DeleteMedicalRecordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecordModel record) addMedicalRecords,
    required TResult Function() fechAllMedicalRecords,
    required TResult Function(String id) deleteMedicalRecord,
  }) {
    return deleteMedicalRecord(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecordModel record)? addMedicalRecords,
    TResult? Function()? fechAllMedicalRecords,
    TResult? Function(String id)? deleteMedicalRecord,
  }) {
    return deleteMedicalRecord?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecordModel record)? addMedicalRecords,
    TResult Function()? fechAllMedicalRecords,
    TResult Function(String id)? deleteMedicalRecord,
    required TResult orElse(),
  }) {
    if (deleteMedicalRecord != null) {
      return deleteMedicalRecord(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMedicalRecords value) addMedicalRecords,
    required TResult Function(_FechAllMedicalRecords value)
        fechAllMedicalRecords,
    required TResult Function(_DeleteMedicalRecord value) deleteMedicalRecord,
  }) {
    return deleteMedicalRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMedicalRecords value)? addMedicalRecords,
    TResult? Function(_FechAllMedicalRecords value)? fechAllMedicalRecords,
    TResult? Function(_DeleteMedicalRecord value)? deleteMedicalRecord,
  }) {
    return deleteMedicalRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMedicalRecords value)? addMedicalRecords,
    TResult Function(_FechAllMedicalRecords value)? fechAllMedicalRecords,
    TResult Function(_DeleteMedicalRecord value)? deleteMedicalRecord,
    required TResult orElse(),
  }) {
    if (deleteMedicalRecord != null) {
      return deleteMedicalRecord(this);
    }
    return orElse();
  }
}

abstract class _DeleteMedicalRecord implements MedicalRecordsEvent {
  const factory _DeleteMedicalRecord(final String id) =
      _$DeleteMedicalRecordImpl;

  String get id;

  /// Create a copy of MedicalRecordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMedicalRecordImplCopyWith<_$DeleteMedicalRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MedicalRecordsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() recordloadingState,
    required TResult Function() errorState,
    required TResult Function(List<RecordModel> records) recordsloadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? recordloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<RecordModel> records)? recordsloadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? recordloadingState,
    TResult Function()? errorState,
    TResult Function(List<RecordModel> records)? recordsloadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_RecordLoadingState value) recordloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_RecordsLoadedState value) recordsloadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_RecordLoadingState value)? recordloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_RecordsLoadedState value)? recordsloadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_RecordLoadingState value)? recordloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_RecordsLoadedState value)? recordsloadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalRecordsStateCopyWith<$Res> {
  factory $MedicalRecordsStateCopyWith(
          MedicalRecordsState value, $Res Function(MedicalRecordsState) then) =
      _$MedicalRecordsStateCopyWithImpl<$Res, MedicalRecordsState>;
}

/// @nodoc
class _$MedicalRecordsStateCopyWithImpl<$Res, $Val extends MedicalRecordsState>
    implements $MedicalRecordsStateCopyWith<$Res> {
  _$MedicalRecordsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicalRecordsState
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
    extends _$MedicalRecordsStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalRecordsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'MedicalRecordsState.initialState()';
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
    required TResult Function() recordloadingState,
    required TResult Function() errorState,
    required TResult Function(List<RecordModel> records) recordsloadedState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? recordloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<RecordModel> records)? recordsloadedState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? recordloadingState,
    TResult Function()? errorState,
    TResult Function(List<RecordModel> records)? recordsloadedState,
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
    required TResult Function(_RecordLoadingState value) recordloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_RecordsLoadedState value) recordsloadedState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_RecordLoadingState value)? recordloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_RecordsLoadedState value)? recordsloadedState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_RecordLoadingState value)? recordloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_RecordsLoadedState value)? recordsloadedState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements MedicalRecordsState {
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
    extends _$MedicalRecordsStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalRecordsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'MedicalRecordsState.loadingState()';
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
    required TResult Function() recordloadingState,
    required TResult Function() errorState,
    required TResult Function(List<RecordModel> records) recordsloadedState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? recordloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<RecordModel> records)? recordsloadedState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? recordloadingState,
    TResult Function()? errorState,
    TResult Function(List<RecordModel> records)? recordsloadedState,
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
    required TResult Function(_RecordLoadingState value) recordloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_RecordsLoadedState value) recordsloadedState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_RecordLoadingState value)? recordloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_RecordsLoadedState value)? recordsloadedState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_RecordLoadingState value)? recordloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_RecordsLoadedState value)? recordsloadedState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements MedicalRecordsState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$RecordLoadingStateImplCopyWith<$Res> {
  factory _$$RecordLoadingStateImplCopyWith(_$RecordLoadingStateImpl value,
          $Res Function(_$RecordLoadingStateImpl) then) =
      __$$RecordLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordLoadingStateImplCopyWithImpl<$Res>
    extends _$MedicalRecordsStateCopyWithImpl<$Res, _$RecordLoadingStateImpl>
    implements _$$RecordLoadingStateImplCopyWith<$Res> {
  __$$RecordLoadingStateImplCopyWithImpl(_$RecordLoadingStateImpl _value,
      $Res Function(_$RecordLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalRecordsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordLoadingStateImpl implements _RecordLoadingState {
  const _$RecordLoadingStateImpl();

  @override
  String toString() {
    return 'MedicalRecordsState.recordloadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() recordloadingState,
    required TResult Function() errorState,
    required TResult Function(List<RecordModel> records) recordsloadedState,
  }) {
    return recordloadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? recordloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<RecordModel> records)? recordsloadedState,
  }) {
    return recordloadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? recordloadingState,
    TResult Function()? errorState,
    TResult Function(List<RecordModel> records)? recordsloadedState,
    required TResult orElse(),
  }) {
    if (recordloadingState != null) {
      return recordloadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_RecordLoadingState value) recordloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_RecordsLoadedState value) recordsloadedState,
  }) {
    return recordloadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_RecordLoadingState value)? recordloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_RecordsLoadedState value)? recordsloadedState,
  }) {
    return recordloadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_RecordLoadingState value)? recordloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_RecordsLoadedState value)? recordsloadedState,
    required TResult orElse(),
  }) {
    if (recordloadingState != null) {
      return recordloadingState(this);
    }
    return orElse();
  }
}

abstract class _RecordLoadingState implements MedicalRecordsState {
  const factory _RecordLoadingState() = _$RecordLoadingStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$MedicalRecordsStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalRecordsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'MedicalRecordsState.errorState()';
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
    required TResult Function() recordloadingState,
    required TResult Function() errorState,
    required TResult Function(List<RecordModel> records) recordsloadedState,
  }) {
    return errorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? recordloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<RecordModel> records)? recordsloadedState,
  }) {
    return errorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? recordloadingState,
    TResult Function()? errorState,
    TResult Function(List<RecordModel> records)? recordsloadedState,
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
    required TResult Function(_RecordLoadingState value) recordloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_RecordsLoadedState value) recordsloadedState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_RecordLoadingState value)? recordloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_RecordsLoadedState value)? recordsloadedState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_RecordLoadingState value)? recordloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_RecordsLoadedState value)? recordsloadedState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements MedicalRecordsState {
  const factory _ErrorState() = _$ErrorStateImpl;
}

/// @nodoc
abstract class _$$RecordsLoadedStateImplCopyWith<$Res> {
  factory _$$RecordsLoadedStateImplCopyWith(_$RecordsLoadedStateImpl value,
          $Res Function(_$RecordsLoadedStateImpl) then) =
      __$$RecordsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecordModel> records});
}

/// @nodoc
class __$$RecordsLoadedStateImplCopyWithImpl<$Res>
    extends _$MedicalRecordsStateCopyWithImpl<$Res, _$RecordsLoadedStateImpl>
    implements _$$RecordsLoadedStateImplCopyWith<$Res> {
  __$$RecordsLoadedStateImplCopyWithImpl(_$RecordsLoadedStateImpl _value,
      $Res Function(_$RecordsLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalRecordsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
  }) {
    return _then(_$RecordsLoadedStateImpl(
      null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordModel>,
    ));
  }
}

/// @nodoc

class _$RecordsLoadedStateImpl implements _RecordsLoadedState {
  const _$RecordsLoadedStateImpl(final List<RecordModel> records)
      : _records = records;

  final List<RecordModel> _records;
  @override
  List<RecordModel> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'MedicalRecordsState.recordsloadedState(records: $records)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_records));

  /// Create a copy of MedicalRecordsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordsLoadedStateImplCopyWith<_$RecordsLoadedStateImpl> get copyWith =>
      __$$RecordsLoadedStateImplCopyWithImpl<_$RecordsLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() recordloadingState,
    required TResult Function() errorState,
    required TResult Function(List<RecordModel> records) recordsloadedState,
  }) {
    return recordsloadedState(records);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? recordloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<RecordModel> records)? recordsloadedState,
  }) {
    return recordsloadedState?.call(records);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? recordloadingState,
    TResult Function()? errorState,
    TResult Function(List<RecordModel> records)? recordsloadedState,
    required TResult orElse(),
  }) {
    if (recordsloadedState != null) {
      return recordsloadedState(records);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_RecordLoadingState value) recordloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_RecordsLoadedState value) recordsloadedState,
  }) {
    return recordsloadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_RecordLoadingState value)? recordloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_RecordsLoadedState value)? recordsloadedState,
  }) {
    return recordsloadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_RecordLoadingState value)? recordloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_RecordsLoadedState value)? recordsloadedState,
    required TResult orElse(),
  }) {
    if (recordsloadedState != null) {
      return recordsloadedState(this);
    }
    return orElse();
  }
}

abstract class _RecordsLoadedState implements MedicalRecordsState {
  const factory _RecordsLoadedState(final List<RecordModel> records) =
      _$RecordsLoadedStateImpl;

  List<RecordModel> get records;

  /// Create a copy of MedicalRecordsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordsLoadedStateImplCopyWith<_$RecordsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
