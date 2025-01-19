// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_partners_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatPartnersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllChatPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllChatPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllChatPartners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllChatPartners value) fetchAllChatPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllChatPartners value)? fetchAllChatPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllChatPartners value)? fetchAllChatPartners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPartnersEventCopyWith<$Res> {
  factory $ChatPartnersEventCopyWith(
          ChatPartnersEvent value, $Res Function(ChatPartnersEvent) then) =
      _$ChatPartnersEventCopyWithImpl<$Res, ChatPartnersEvent>;
}

/// @nodoc
class _$ChatPartnersEventCopyWithImpl<$Res, $Val extends ChatPartnersEvent>
    implements $ChatPartnersEventCopyWith<$Res> {
  _$ChatPartnersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatPartnersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAllChatPartnersImplCopyWith<$Res> {
  factory _$$FetchAllChatPartnersImplCopyWith(_$FetchAllChatPartnersImpl value,
          $Res Function(_$FetchAllChatPartnersImpl) then) =
      __$$FetchAllChatPartnersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllChatPartnersImplCopyWithImpl<$Res>
    extends _$ChatPartnersEventCopyWithImpl<$Res, _$FetchAllChatPartnersImpl>
    implements _$$FetchAllChatPartnersImplCopyWith<$Res> {
  __$$FetchAllChatPartnersImplCopyWithImpl(_$FetchAllChatPartnersImpl _value,
      $Res Function(_$FetchAllChatPartnersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatPartnersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllChatPartnersImpl implements _FetchAllChatPartners {
  const _$FetchAllChatPartnersImpl();

  @override
  String toString() {
    return 'ChatPartnersEvent.fetchAllChatPartners()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllChatPartnersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllChatPartners,
  }) {
    return fetchAllChatPartners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllChatPartners,
  }) {
    return fetchAllChatPartners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllChatPartners,
    required TResult orElse(),
  }) {
    if (fetchAllChatPartners != null) {
      return fetchAllChatPartners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllChatPartners value) fetchAllChatPartners,
  }) {
    return fetchAllChatPartners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllChatPartners value)? fetchAllChatPartners,
  }) {
    return fetchAllChatPartners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllChatPartners value)? fetchAllChatPartners,
    required TResult orElse(),
  }) {
    if (fetchAllChatPartners != null) {
      return fetchAllChatPartners(this);
    }
    return orElse();
  }
}

abstract class _FetchAllChatPartners implements ChatPartnersEvent {
  const factory _FetchAllChatPartners() = _$FetchAllChatPartnersImpl;
}

/// @nodoc
mixin _$ChatPartnersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() chatPartnersLoading,
    required TResult Function(List<ChatPartnerModel> messages)
        chatPartnersLoaded,
    required TResult Function() errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatPartnersLoading,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatPartnersLoading,
    TResult Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult Function()? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPartnersStateCopyWith<$Res> {
  factory $ChatPartnersStateCopyWith(
          ChatPartnersState value, $Res Function(ChatPartnersState) then) =
      _$ChatPartnersStateCopyWithImpl<$Res, ChatPartnersState>;
}

/// @nodoc
class _$ChatPartnersStateCopyWithImpl<$Res, $Val extends ChatPartnersState>
    implements $ChatPartnersStateCopyWith<$Res> {
  _$ChatPartnersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatPartnersState
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
    extends _$ChatPartnersStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatPartnersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ChatPartnersState.initialState()';
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
    required TResult Function() chatPartnersLoading,
    required TResult Function(List<ChatPartnerModel> messages)
        chatPartnersLoaded,
    required TResult Function() errorState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatPartnersLoading,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatPartnersLoading,
    TResult Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
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
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ChatPartnersState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$ChatPartnersLoadingImplCopyWith<$Res> {
  factory _$$ChatPartnersLoadingImplCopyWith(_$ChatPartnersLoadingImpl value,
          $Res Function(_$ChatPartnersLoadingImpl) then) =
      __$$ChatPartnersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatPartnersLoadingImplCopyWithImpl<$Res>
    extends _$ChatPartnersStateCopyWithImpl<$Res, _$ChatPartnersLoadingImpl>
    implements _$$ChatPartnersLoadingImplCopyWith<$Res> {
  __$$ChatPartnersLoadingImplCopyWithImpl(_$ChatPartnersLoadingImpl _value,
      $Res Function(_$ChatPartnersLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatPartnersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatPartnersLoadingImpl implements _ChatPartnersLoading {
  const _$ChatPartnersLoadingImpl();

  @override
  String toString() {
    return 'ChatPartnersState.chatPartnersLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatPartnersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() chatPartnersLoading,
    required TResult Function(List<ChatPartnerModel> messages)
        chatPartnersLoaded,
    required TResult Function() errorState,
  }) {
    return chatPartnersLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatPartnersLoading,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return chatPartnersLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatPartnersLoading,
    TResult Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (chatPartnersLoading != null) {
      return chatPartnersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return chatPartnersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return chatPartnersLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (chatPartnersLoading != null) {
      return chatPartnersLoading(this);
    }
    return orElse();
  }
}

abstract class _ChatPartnersLoading implements ChatPartnersState {
  const factory _ChatPartnersLoading() = _$ChatPartnersLoadingImpl;
}

/// @nodoc
abstract class _$$ChatPartnersLoadedImplCopyWith<$Res> {
  factory _$$ChatPartnersLoadedImplCopyWith(_$ChatPartnersLoadedImpl value,
          $Res Function(_$ChatPartnersLoadedImpl) then) =
      __$$ChatPartnersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatPartnerModel> messages});
}

/// @nodoc
class __$$ChatPartnersLoadedImplCopyWithImpl<$Res>
    extends _$ChatPartnersStateCopyWithImpl<$Res, _$ChatPartnersLoadedImpl>
    implements _$$ChatPartnersLoadedImplCopyWith<$Res> {
  __$$ChatPartnersLoadedImplCopyWithImpl(_$ChatPartnersLoadedImpl _value,
      $Res Function(_$ChatPartnersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatPartnersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$ChatPartnersLoadedImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatPartnerModel>,
    ));
  }
}

/// @nodoc

class _$ChatPartnersLoadedImpl implements _ChatPartnersLoaded {
  const _$ChatPartnersLoadedImpl(final List<ChatPartnerModel> messages)
      : _messages = messages;

  final List<ChatPartnerModel> _messages;
  @override
  List<ChatPartnerModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatPartnersState.chatPartnersLoaded(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatPartnersLoadedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatPartnersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatPartnersLoadedImplCopyWith<_$ChatPartnersLoadedImpl> get copyWith =>
      __$$ChatPartnersLoadedImplCopyWithImpl<_$ChatPartnersLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() chatPartnersLoading,
    required TResult Function(List<ChatPartnerModel> messages)
        chatPartnersLoaded,
    required TResult Function() errorState,
  }) {
    return chatPartnersLoaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatPartnersLoading,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return chatPartnersLoaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatPartnersLoading,
    TResult Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (chatPartnersLoaded != null) {
      return chatPartnersLoaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return chatPartnersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return chatPartnersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (chatPartnersLoaded != null) {
      return chatPartnersLoaded(this);
    }
    return orElse();
  }
}

abstract class _ChatPartnersLoaded implements ChatPartnersState {
  const factory _ChatPartnersLoaded(final List<ChatPartnerModel> messages) =
      _$ChatPartnersLoadedImpl;

  List<ChatPartnerModel> get messages;

  /// Create a copy of ChatPartnersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatPartnersLoadedImplCopyWith<_$ChatPartnersLoadedImpl> get copyWith =>
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
    extends _$ChatPartnersStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatPartnersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'ChatPartnersState.errorState()';
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
    required TResult Function() chatPartnersLoading,
    required TResult Function(List<ChatPartnerModel> messages)
        chatPartnersLoaded,
    required TResult Function() errorState,
  }) {
    return errorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatPartnersLoading,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return errorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatPartnersLoading,
    TResult Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
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
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements ChatPartnersState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
