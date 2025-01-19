// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentBookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchAllTimeSlots,
    required TResult Function(BookingModel booking) confirmSlotBooking,
    required TResult Function() fetchAllBookings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchAllTimeSlots,
    TResult? Function(BookingModel booking)? confirmSlotBooking,
    TResult? Function()? fetchAllBookings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchAllTimeSlots,
    TResult Function(BookingModel booking)? confirmSlotBooking,
    TResult Function()? fetchAllBookings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTimeSlots value) fetchAllTimeSlots,
    required TResult Function(_ConfirmSlotBooking value) confirmSlotBooking,
    required TResult Function(_FetchAllBookings value) fetchAllBookings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTimeSlots value)? fetchAllTimeSlots,
    TResult? Function(_ConfirmSlotBooking value)? confirmSlotBooking,
    TResult? Function(_FetchAllBookings value)? fetchAllBookings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTimeSlots value)? fetchAllTimeSlots,
    TResult Function(_ConfirmSlotBooking value)? confirmSlotBooking,
    TResult Function(_FetchAllBookings value)? fetchAllBookings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentBookingEventCopyWith<$Res> {
  factory $AppointmentBookingEventCopyWith(AppointmentBookingEvent value,
          $Res Function(AppointmentBookingEvent) then) =
      _$AppointmentBookingEventCopyWithImpl<$Res, AppointmentBookingEvent>;
}

/// @nodoc
class _$AppointmentBookingEventCopyWithImpl<$Res,
        $Val extends AppointmentBookingEvent>
    implements $AppointmentBookingEventCopyWith<$Res> {
  _$AppointmentBookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentBookingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAllTimeSlotsImplCopyWith<$Res> {
  factory _$$FetchAllTimeSlotsImplCopyWith(_$FetchAllTimeSlotsImpl value,
          $Res Function(_$FetchAllTimeSlotsImpl) then) =
      __$$FetchAllTimeSlotsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$FetchAllTimeSlotsImplCopyWithImpl<$Res>
    extends _$AppointmentBookingEventCopyWithImpl<$Res, _$FetchAllTimeSlotsImpl>
    implements _$$FetchAllTimeSlotsImplCopyWith<$Res> {
  __$$FetchAllTimeSlotsImplCopyWithImpl(_$FetchAllTimeSlotsImpl _value,
      $Res Function(_$FetchAllTimeSlotsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$FetchAllTimeSlotsImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAllTimeSlotsImpl implements _FetchAllTimeSlots {
  const _$FetchAllTimeSlotsImpl(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'AppointmentBookingEvent.fetchAllTimeSlots(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllTimeSlotsImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of AppointmentBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllTimeSlotsImplCopyWith<_$FetchAllTimeSlotsImpl> get copyWith =>
      __$$FetchAllTimeSlotsImplCopyWithImpl<_$FetchAllTimeSlotsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchAllTimeSlots,
    required TResult Function(BookingModel booking) confirmSlotBooking,
    required TResult Function() fetchAllBookings,
  }) {
    return fetchAllTimeSlots(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchAllTimeSlots,
    TResult? Function(BookingModel booking)? confirmSlotBooking,
    TResult? Function()? fetchAllBookings,
  }) {
    return fetchAllTimeSlots?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchAllTimeSlots,
    TResult Function(BookingModel booking)? confirmSlotBooking,
    TResult Function()? fetchAllBookings,
    required TResult orElse(),
  }) {
    if (fetchAllTimeSlots != null) {
      return fetchAllTimeSlots(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTimeSlots value) fetchAllTimeSlots,
    required TResult Function(_ConfirmSlotBooking value) confirmSlotBooking,
    required TResult Function(_FetchAllBookings value) fetchAllBookings,
  }) {
    return fetchAllTimeSlots(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTimeSlots value)? fetchAllTimeSlots,
    TResult? Function(_ConfirmSlotBooking value)? confirmSlotBooking,
    TResult? Function(_FetchAllBookings value)? fetchAllBookings,
  }) {
    return fetchAllTimeSlots?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTimeSlots value)? fetchAllTimeSlots,
    TResult Function(_ConfirmSlotBooking value)? confirmSlotBooking,
    TResult Function(_FetchAllBookings value)? fetchAllBookings,
    required TResult orElse(),
  }) {
    if (fetchAllTimeSlots != null) {
      return fetchAllTimeSlots(this);
    }
    return orElse();
  }
}

abstract class _FetchAllTimeSlots implements AppointmentBookingEvent {
  const factory _FetchAllTimeSlots(final String uid) = _$FetchAllTimeSlotsImpl;

  String get uid;

  /// Create a copy of AppointmentBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchAllTimeSlotsImplCopyWith<_$FetchAllTimeSlotsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmSlotBookingImplCopyWith<$Res> {
  factory _$$ConfirmSlotBookingImplCopyWith(_$ConfirmSlotBookingImpl value,
          $Res Function(_$ConfirmSlotBookingImpl) then) =
      __$$ConfirmSlotBookingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingModel booking});
}

/// @nodoc
class __$$ConfirmSlotBookingImplCopyWithImpl<$Res>
    extends _$AppointmentBookingEventCopyWithImpl<$Res,
        _$ConfirmSlotBookingImpl>
    implements _$$ConfirmSlotBookingImplCopyWith<$Res> {
  __$$ConfirmSlotBookingImplCopyWithImpl(_$ConfirmSlotBookingImpl _value,
      $Res Function(_$ConfirmSlotBookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
  }) {
    return _then(_$ConfirmSlotBookingImpl(
      null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as BookingModel,
    ));
  }
}

/// @nodoc

class _$ConfirmSlotBookingImpl implements _ConfirmSlotBooking {
  const _$ConfirmSlotBookingImpl(this.booking);

  @override
  final BookingModel booking;

  @override
  String toString() {
    return 'AppointmentBookingEvent.confirmSlotBooking(booking: $booking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmSlotBookingImpl &&
            (identical(other.booking, booking) || other.booking == booking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, booking);

  /// Create a copy of AppointmentBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmSlotBookingImplCopyWith<_$ConfirmSlotBookingImpl> get copyWith =>
      __$$ConfirmSlotBookingImplCopyWithImpl<_$ConfirmSlotBookingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchAllTimeSlots,
    required TResult Function(BookingModel booking) confirmSlotBooking,
    required TResult Function() fetchAllBookings,
  }) {
    return confirmSlotBooking(booking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchAllTimeSlots,
    TResult? Function(BookingModel booking)? confirmSlotBooking,
    TResult? Function()? fetchAllBookings,
  }) {
    return confirmSlotBooking?.call(booking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchAllTimeSlots,
    TResult Function(BookingModel booking)? confirmSlotBooking,
    TResult Function()? fetchAllBookings,
    required TResult orElse(),
  }) {
    if (confirmSlotBooking != null) {
      return confirmSlotBooking(booking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTimeSlots value) fetchAllTimeSlots,
    required TResult Function(_ConfirmSlotBooking value) confirmSlotBooking,
    required TResult Function(_FetchAllBookings value) fetchAllBookings,
  }) {
    return confirmSlotBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTimeSlots value)? fetchAllTimeSlots,
    TResult? Function(_ConfirmSlotBooking value)? confirmSlotBooking,
    TResult? Function(_FetchAllBookings value)? fetchAllBookings,
  }) {
    return confirmSlotBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTimeSlots value)? fetchAllTimeSlots,
    TResult Function(_ConfirmSlotBooking value)? confirmSlotBooking,
    TResult Function(_FetchAllBookings value)? fetchAllBookings,
    required TResult orElse(),
  }) {
    if (confirmSlotBooking != null) {
      return confirmSlotBooking(this);
    }
    return orElse();
  }
}

abstract class _ConfirmSlotBooking implements AppointmentBookingEvent {
  const factory _ConfirmSlotBooking(final BookingModel booking) =
      _$ConfirmSlotBookingImpl;

  BookingModel get booking;

  /// Create a copy of AppointmentBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmSlotBookingImplCopyWith<_$ConfirmSlotBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllBookingsImplCopyWith<$Res> {
  factory _$$FetchAllBookingsImplCopyWith(_$FetchAllBookingsImpl value,
          $Res Function(_$FetchAllBookingsImpl) then) =
      __$$FetchAllBookingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllBookingsImplCopyWithImpl<$Res>
    extends _$AppointmentBookingEventCopyWithImpl<$Res, _$FetchAllBookingsImpl>
    implements _$$FetchAllBookingsImplCopyWith<$Res> {
  __$$FetchAllBookingsImplCopyWithImpl(_$FetchAllBookingsImpl _value,
      $Res Function(_$FetchAllBookingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentBookingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllBookingsImpl implements _FetchAllBookings {
  const _$FetchAllBookingsImpl();

  @override
  String toString() {
    return 'AppointmentBookingEvent.fetchAllBookings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllBookingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchAllTimeSlots,
    required TResult Function(BookingModel booking) confirmSlotBooking,
    required TResult Function() fetchAllBookings,
  }) {
    return fetchAllBookings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchAllTimeSlots,
    TResult? Function(BookingModel booking)? confirmSlotBooking,
    TResult? Function()? fetchAllBookings,
  }) {
    return fetchAllBookings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchAllTimeSlots,
    TResult Function(BookingModel booking)? confirmSlotBooking,
    TResult Function()? fetchAllBookings,
    required TResult orElse(),
  }) {
    if (fetchAllBookings != null) {
      return fetchAllBookings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTimeSlots value) fetchAllTimeSlots,
    required TResult Function(_ConfirmSlotBooking value) confirmSlotBooking,
    required TResult Function(_FetchAllBookings value) fetchAllBookings,
  }) {
    return fetchAllBookings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTimeSlots value)? fetchAllTimeSlots,
    TResult? Function(_ConfirmSlotBooking value)? confirmSlotBooking,
    TResult? Function(_FetchAllBookings value)? fetchAllBookings,
  }) {
    return fetchAllBookings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTimeSlots value)? fetchAllTimeSlots,
    TResult Function(_ConfirmSlotBooking value)? confirmSlotBooking,
    TResult Function(_FetchAllBookings value)? fetchAllBookings,
    required TResult orElse(),
  }) {
    if (fetchAllBookings != null) {
      return fetchAllBookings(this);
    }
    return orElse();
  }
}

abstract class _FetchAllBookings implements AppointmentBookingEvent {
  const factory _FetchAllBookings() = _$FetchAllBookingsImpl;
}

/// @nodoc
mixin _$AppointmentBookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() bookingConfirmationLoaded,
    required TResult Function(List<SlotModel> slots) loadedState,
    required TResult Function(List<BookingModel> booking)
        bookingDataFetchingLoaded,
    required TResult Function(String message) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? bookingConfirmationLoaded,
    TResult? Function(List<SlotModel> slots)? loadedState,
    TResult? Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult? Function(String message)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? bookingConfirmationLoaded,
    TResult Function(List<SlotModel> slots)? loadedState,
    TResult Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_BookingConfirmationLoaded value)
        bookingConfirmationLoaded,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_BookingDataFetchingLoaded value)
        bookingDataFetchingLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentBookingStateCopyWith<$Res> {
  factory $AppointmentBookingStateCopyWith(AppointmentBookingState value,
          $Res Function(AppointmentBookingState) then) =
      _$AppointmentBookingStateCopyWithImpl<$Res, AppointmentBookingState>;
}

/// @nodoc
class _$AppointmentBookingStateCopyWithImpl<$Res,
        $Val extends AppointmentBookingState>
    implements $AppointmentBookingStateCopyWith<$Res> {
  _$AppointmentBookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentBookingState
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
    extends _$AppointmentBookingStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentBookingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'AppointmentBookingState.initialState()';
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
    required TResult Function() bookingConfirmationLoaded,
    required TResult Function(List<SlotModel> slots) loadedState,
    required TResult Function(List<BookingModel> booking)
        bookingDataFetchingLoaded,
    required TResult Function(String message) errorState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? bookingConfirmationLoaded,
    TResult? Function(List<SlotModel> slots)? loadedState,
    TResult? Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult? Function(String message)? errorState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? bookingConfirmationLoaded,
    TResult Function(List<SlotModel> slots)? loadedState,
    TResult Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult Function(String message)? errorState,
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
    required TResult Function(_BookingConfirmationLoaded value)
        bookingConfirmationLoaded,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_BookingDataFetchingLoaded value)
        bookingDataFetchingLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AppointmentBookingState {
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
    extends _$AppointmentBookingStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentBookingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AppointmentBookingState.loadingState()';
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
    required TResult Function() bookingConfirmationLoaded,
    required TResult Function(List<SlotModel> slots) loadedState,
    required TResult Function(List<BookingModel> booking)
        bookingDataFetchingLoaded,
    required TResult Function(String message) errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? bookingConfirmationLoaded,
    TResult? Function(List<SlotModel> slots)? loadedState,
    TResult? Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult? Function(String message)? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? bookingConfirmationLoaded,
    TResult Function(List<SlotModel> slots)? loadedState,
    TResult Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult Function(String message)? errorState,
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
    required TResult Function(_BookingConfirmationLoaded value)
        bookingConfirmationLoaded,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_BookingDataFetchingLoaded value)
        bookingDataFetchingLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AppointmentBookingState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$BookingConfirmationLoadedImplCopyWith<$Res> {
  factory _$$BookingConfirmationLoadedImplCopyWith(
          _$BookingConfirmationLoadedImpl value,
          $Res Function(_$BookingConfirmationLoadedImpl) then) =
      __$$BookingConfirmationLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingConfirmationLoadedImplCopyWithImpl<$Res>
    extends _$AppointmentBookingStateCopyWithImpl<$Res,
        _$BookingConfirmationLoadedImpl>
    implements _$$BookingConfirmationLoadedImplCopyWith<$Res> {
  __$$BookingConfirmationLoadedImplCopyWithImpl(
      _$BookingConfirmationLoadedImpl _value,
      $Res Function(_$BookingConfirmationLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentBookingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookingConfirmationLoadedImpl implements _BookingConfirmationLoaded {
  const _$BookingConfirmationLoadedImpl();

  @override
  String toString() {
    return 'AppointmentBookingState.bookingConfirmationLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingConfirmationLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() bookingConfirmationLoaded,
    required TResult Function(List<SlotModel> slots) loadedState,
    required TResult Function(List<BookingModel> booking)
        bookingDataFetchingLoaded,
    required TResult Function(String message) errorState,
  }) {
    return bookingConfirmationLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? bookingConfirmationLoaded,
    TResult? Function(List<SlotModel> slots)? loadedState,
    TResult? Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult? Function(String message)? errorState,
  }) {
    return bookingConfirmationLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? bookingConfirmationLoaded,
    TResult Function(List<SlotModel> slots)? loadedState,
    TResult Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (bookingConfirmationLoaded != null) {
      return bookingConfirmationLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_BookingConfirmationLoaded value)
        bookingConfirmationLoaded,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_BookingDataFetchingLoaded value)
        bookingDataFetchingLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return bookingConfirmationLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return bookingConfirmationLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (bookingConfirmationLoaded != null) {
      return bookingConfirmationLoaded(this);
    }
    return orElse();
  }
}

abstract class _BookingConfirmationLoaded implements AppointmentBookingState {
  const factory _BookingConfirmationLoaded() = _$BookingConfirmationLoadedImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SlotModel> slots});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$AppointmentBookingStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slots = null,
  }) {
    return _then(_$LoadedStateImpl(
      null == slots
          ? _value._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements _LoadedState {
  const _$LoadedStateImpl(final List<SlotModel> slots) : _slots = slots;

  final List<SlotModel> _slots;
  @override
  List<SlotModel> get slots {
    if (_slots is EqualUnmodifiableListView) return _slots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slots);
  }

  @override
  String toString() {
    return 'AppointmentBookingState.loadedState(slots: $slots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._slots, _slots));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_slots));

  /// Create a copy of AppointmentBookingState
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
    required TResult Function() bookingConfirmationLoaded,
    required TResult Function(List<SlotModel> slots) loadedState,
    required TResult Function(List<BookingModel> booking)
        bookingDataFetchingLoaded,
    required TResult Function(String message) errorState,
  }) {
    return loadedState(slots);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? bookingConfirmationLoaded,
    TResult? Function(List<SlotModel> slots)? loadedState,
    TResult? Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult? Function(String message)? errorState,
  }) {
    return loadedState?.call(slots);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? bookingConfirmationLoaded,
    TResult Function(List<SlotModel> slots)? loadedState,
    TResult Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(slots);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_BookingConfirmationLoaded value)
        bookingConfirmationLoaded,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_BookingDataFetchingLoaded value)
        bookingDataFetchingLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements AppointmentBookingState {
  const factory _LoadedState(final List<SlotModel> slots) = _$LoadedStateImpl;

  List<SlotModel> get slots;

  /// Create a copy of AppointmentBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingDataFetchingLoadedImplCopyWith<$Res> {
  factory _$$BookingDataFetchingLoadedImplCopyWith(
          _$BookingDataFetchingLoadedImpl value,
          $Res Function(_$BookingDataFetchingLoadedImpl) then) =
      __$$BookingDataFetchingLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookingModel> booking});
}

/// @nodoc
class __$$BookingDataFetchingLoadedImplCopyWithImpl<$Res>
    extends _$AppointmentBookingStateCopyWithImpl<$Res,
        _$BookingDataFetchingLoadedImpl>
    implements _$$BookingDataFetchingLoadedImplCopyWith<$Res> {
  __$$BookingDataFetchingLoadedImplCopyWithImpl(
      _$BookingDataFetchingLoadedImpl _value,
      $Res Function(_$BookingDataFetchingLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
  }) {
    return _then(_$BookingDataFetchingLoadedImpl(
      null == booking
          ? _value._booking
          : booking // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>,
    ));
  }
}

/// @nodoc

class _$BookingDataFetchingLoadedImpl implements _BookingDataFetchingLoaded {
  const _$BookingDataFetchingLoadedImpl(final List<BookingModel> booking)
      : _booking = booking;

  final List<BookingModel> _booking;
  @override
  List<BookingModel> get booking {
    if (_booking is EqualUnmodifiableListView) return _booking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_booking);
  }

  @override
  String toString() {
    return 'AppointmentBookingState.bookingDataFetchingLoaded(booking: $booking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDataFetchingLoadedImpl &&
            const DeepCollectionEquality().equals(other._booking, _booking));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_booking));

  /// Create a copy of AppointmentBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDataFetchingLoadedImplCopyWith<_$BookingDataFetchingLoadedImpl>
      get copyWith => __$$BookingDataFetchingLoadedImplCopyWithImpl<
          _$BookingDataFetchingLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function() bookingConfirmationLoaded,
    required TResult Function(List<SlotModel> slots) loadedState,
    required TResult Function(List<BookingModel> booking)
        bookingDataFetchingLoaded,
    required TResult Function(String message) errorState,
  }) {
    return bookingDataFetchingLoaded(booking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? bookingConfirmationLoaded,
    TResult? Function(List<SlotModel> slots)? loadedState,
    TResult? Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult? Function(String message)? errorState,
  }) {
    return bookingDataFetchingLoaded?.call(booking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? bookingConfirmationLoaded,
    TResult Function(List<SlotModel> slots)? loadedState,
    TResult Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (bookingDataFetchingLoaded != null) {
      return bookingDataFetchingLoaded(booking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_BookingConfirmationLoaded value)
        bookingConfirmationLoaded,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_BookingDataFetchingLoaded value)
        bookingDataFetchingLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return bookingDataFetchingLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return bookingDataFetchingLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (bookingDataFetchingLoaded != null) {
      return bookingDataFetchingLoaded(this);
    }
    return orElse();
  }
}

abstract class _BookingDataFetchingLoaded implements AppointmentBookingState {
  const factory _BookingDataFetchingLoaded(final List<BookingModel> booking) =
      _$BookingDataFetchingLoadedImpl;

  List<BookingModel> get booking;

  /// Create a copy of AppointmentBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingDataFetchingLoadedImplCopyWith<_$BookingDataFetchingLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$AppointmentBookingStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppointmentBookingState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppointmentBookingState
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
    required TResult Function() loadingState,
    required TResult Function() bookingConfirmationLoaded,
    required TResult Function(List<SlotModel> slots) loadedState,
    required TResult Function(List<BookingModel> booking)
        bookingDataFetchingLoaded,
    required TResult Function(String message) errorState,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function()? bookingConfirmationLoaded,
    TResult? Function(List<SlotModel> slots)? loadedState,
    TResult? Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult? Function(String message)? errorState,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function()? bookingConfirmationLoaded,
    TResult Function(List<SlotModel> slots)? loadedState,
    TResult Function(List<BookingModel> booking)? bookingDataFetchingLoaded,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_BookingConfirmationLoaded value)
        bookingConfirmationLoaded,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_BookingDataFetchingLoaded value)
        bookingDataFetchingLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_BookingConfirmationLoaded value)?
        bookingConfirmationLoaded,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_BookingDataFetchingLoaded value)?
        bookingDataFetchingLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements AppointmentBookingState {
  const factory _ErrorState(final String message) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of AppointmentBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
