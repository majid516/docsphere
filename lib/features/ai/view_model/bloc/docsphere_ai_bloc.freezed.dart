// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docsphere_ai_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DocsphereAiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AiMessageModel> messages) addAiChats,
    required TResult Function() fetchAllChatsWithAi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AiMessageModel> messages)? addAiChats,
    TResult? Function()? fetchAllChatsWithAi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AiMessageModel> messages)? addAiChats,
    TResult Function()? fetchAllChatsWithAi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAiChats value) addAiChats,
    required TResult Function(_FetchAllChatsWithAi value) fetchAllChatsWithAi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAiChats value)? addAiChats,
    TResult? Function(_FetchAllChatsWithAi value)? fetchAllChatsWithAi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAiChats value)? addAiChats,
    TResult Function(_FetchAllChatsWithAi value)? fetchAllChatsWithAi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocsphereAiEventCopyWith<$Res> {
  factory $DocsphereAiEventCopyWith(
          DocsphereAiEvent value, $Res Function(DocsphereAiEvent) then) =
      _$DocsphereAiEventCopyWithImpl<$Res, DocsphereAiEvent>;
}

/// @nodoc
class _$DocsphereAiEventCopyWithImpl<$Res, $Val extends DocsphereAiEvent>
    implements $DocsphereAiEventCopyWith<$Res> {
  _$DocsphereAiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocsphereAiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddAiChatsImplCopyWith<$Res> {
  factory _$$AddAiChatsImplCopyWith(
          _$AddAiChatsImpl value, $Res Function(_$AddAiChatsImpl) then) =
      __$$AddAiChatsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AiMessageModel> messages});
}

/// @nodoc
class __$$AddAiChatsImplCopyWithImpl<$Res>
    extends _$DocsphereAiEventCopyWithImpl<$Res, _$AddAiChatsImpl>
    implements _$$AddAiChatsImplCopyWith<$Res> {
  __$$AddAiChatsImplCopyWithImpl(
      _$AddAiChatsImpl _value, $Res Function(_$AddAiChatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsphereAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$AddAiChatsImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<AiMessageModel>,
    ));
  }
}

/// @nodoc

class _$AddAiChatsImpl implements _AddAiChats {
  const _$AddAiChatsImpl(final List<AiMessageModel> messages)
      : _messages = messages;

  final List<AiMessageModel> _messages;
  @override
  List<AiMessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'DocsphereAiEvent.addAiChats(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAiChatsImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of DocsphereAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAiChatsImplCopyWith<_$AddAiChatsImpl> get copyWith =>
      __$$AddAiChatsImplCopyWithImpl<_$AddAiChatsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AiMessageModel> messages) addAiChats,
    required TResult Function() fetchAllChatsWithAi,
  }) {
    return addAiChats(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AiMessageModel> messages)? addAiChats,
    TResult? Function()? fetchAllChatsWithAi,
  }) {
    return addAiChats?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AiMessageModel> messages)? addAiChats,
    TResult Function()? fetchAllChatsWithAi,
    required TResult orElse(),
  }) {
    if (addAiChats != null) {
      return addAiChats(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAiChats value) addAiChats,
    required TResult Function(_FetchAllChatsWithAi value) fetchAllChatsWithAi,
  }) {
    return addAiChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAiChats value)? addAiChats,
    TResult? Function(_FetchAllChatsWithAi value)? fetchAllChatsWithAi,
  }) {
    return addAiChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAiChats value)? addAiChats,
    TResult Function(_FetchAllChatsWithAi value)? fetchAllChatsWithAi,
    required TResult orElse(),
  }) {
    if (addAiChats != null) {
      return addAiChats(this);
    }
    return orElse();
  }
}

abstract class _AddAiChats implements DocsphereAiEvent {
  const factory _AddAiChats(final List<AiMessageModel> messages) =
      _$AddAiChatsImpl;

  List<AiMessageModel> get messages;

  /// Create a copy of DocsphereAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAiChatsImplCopyWith<_$AddAiChatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllChatsWithAiImplCopyWith<$Res> {
  factory _$$FetchAllChatsWithAiImplCopyWith(_$FetchAllChatsWithAiImpl value,
          $Res Function(_$FetchAllChatsWithAiImpl) then) =
      __$$FetchAllChatsWithAiImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllChatsWithAiImplCopyWithImpl<$Res>
    extends _$DocsphereAiEventCopyWithImpl<$Res, _$FetchAllChatsWithAiImpl>
    implements _$$FetchAllChatsWithAiImplCopyWith<$Res> {
  __$$FetchAllChatsWithAiImplCopyWithImpl(_$FetchAllChatsWithAiImpl _value,
      $Res Function(_$FetchAllChatsWithAiImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsphereAiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllChatsWithAiImpl implements _FetchAllChatsWithAi {
  const _$FetchAllChatsWithAiImpl();

  @override
  String toString() {
    return 'DocsphereAiEvent.fetchAllChatsWithAi()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllChatsWithAiImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AiMessageModel> messages) addAiChats,
    required TResult Function() fetchAllChatsWithAi,
  }) {
    return fetchAllChatsWithAi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AiMessageModel> messages)? addAiChats,
    TResult? Function()? fetchAllChatsWithAi,
  }) {
    return fetchAllChatsWithAi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AiMessageModel> messages)? addAiChats,
    TResult Function()? fetchAllChatsWithAi,
    required TResult orElse(),
  }) {
    if (fetchAllChatsWithAi != null) {
      return fetchAllChatsWithAi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAiChats value) addAiChats,
    required TResult Function(_FetchAllChatsWithAi value) fetchAllChatsWithAi,
  }) {
    return fetchAllChatsWithAi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAiChats value)? addAiChats,
    TResult? Function(_FetchAllChatsWithAi value)? fetchAllChatsWithAi,
  }) {
    return fetchAllChatsWithAi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAiChats value)? addAiChats,
    TResult Function(_FetchAllChatsWithAi value)? fetchAllChatsWithAi,
    required TResult orElse(),
  }) {
    if (fetchAllChatsWithAi != null) {
      return fetchAllChatsWithAi(this);
    }
    return orElse();
  }
}

abstract class _FetchAllChatsWithAi implements DocsphereAiEvent {
  const factory _FetchAllChatsWithAi() = _$FetchAllChatsWithAiImpl;
}

/// @nodoc
mixin _$DocsphereAiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() messageloadingState,
    required TResult Function() errorState,
    required TResult Function(List<AiMessageModel> messages) messageloadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? messageloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<AiMessageModel> messages)? messageloadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageloadingState,
    TResult Function()? errorState,
    TResult Function(List<AiMessageModel> messages)? messageloadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_MessageLoadingState value) messageloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_MessageLoadedState value) messageloadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_MessageLoadedState value)? messageloadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_MessageLoadedState value)? messageloadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocsphereAiStateCopyWith<$Res> {
  factory $DocsphereAiStateCopyWith(
          DocsphereAiState value, $Res Function(DocsphereAiState) then) =
      _$DocsphereAiStateCopyWithImpl<$Res, DocsphereAiState>;
}

/// @nodoc
class _$DocsphereAiStateCopyWithImpl<$Res, $Val extends DocsphereAiState>
    implements $DocsphereAiStateCopyWith<$Res> {
  _$DocsphereAiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocsphereAiState
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
    extends _$DocsphereAiStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsphereAiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'DocsphereAiState.initialState()';
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
    required TResult Function() messageloadingState,
    required TResult Function() errorState,
    required TResult Function(List<AiMessageModel> messages) messageloadedState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? messageloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<AiMessageModel> messages)? messageloadedState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageloadingState,
    TResult Function()? errorState,
    TResult Function(List<AiMessageModel> messages)? messageloadedState,
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
    required TResult Function(_MessageLoadingState value) messageloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_MessageLoadedState value) messageloadedState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_MessageLoadedState value)? messageloadedState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_MessageLoadedState value)? messageloadedState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements DocsphereAiState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$MessageLoadingStateImplCopyWith<$Res> {
  factory _$$MessageLoadingStateImplCopyWith(_$MessageLoadingStateImpl value,
          $Res Function(_$MessageLoadingStateImpl) then) =
      __$$MessageLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageLoadingStateImplCopyWithImpl<$Res>
    extends _$DocsphereAiStateCopyWithImpl<$Res, _$MessageLoadingStateImpl>
    implements _$$MessageLoadingStateImplCopyWith<$Res> {
  __$$MessageLoadingStateImplCopyWithImpl(_$MessageLoadingStateImpl _value,
      $Res Function(_$MessageLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsphereAiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MessageLoadingStateImpl implements _MessageLoadingState {
  const _$MessageLoadingStateImpl();

  @override
  String toString() {
    return 'DocsphereAiState.messageloadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() messageloadingState,
    required TResult Function() errorState,
    required TResult Function(List<AiMessageModel> messages) messageloadedState,
  }) {
    return messageloadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? messageloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<AiMessageModel> messages)? messageloadedState,
  }) {
    return messageloadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageloadingState,
    TResult Function()? errorState,
    TResult Function(List<AiMessageModel> messages)? messageloadedState,
    required TResult orElse(),
  }) {
    if (messageloadingState != null) {
      return messageloadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_MessageLoadingState value) messageloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_MessageLoadedState value) messageloadedState,
  }) {
    return messageloadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_MessageLoadedState value)? messageloadedState,
  }) {
    return messageloadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_MessageLoadedState value)? messageloadedState,
    required TResult orElse(),
  }) {
    if (messageloadingState != null) {
      return messageloadingState(this);
    }
    return orElse();
  }
}

abstract class _MessageLoadingState implements DocsphereAiState {
  const factory _MessageLoadingState() = _$MessageLoadingStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$DocsphereAiStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsphereAiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'DocsphereAiState.errorState()';
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
    required TResult Function() messageloadingState,
    required TResult Function() errorState,
    required TResult Function(List<AiMessageModel> messages) messageloadedState,
  }) {
    return errorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? messageloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<AiMessageModel> messages)? messageloadedState,
  }) {
    return errorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageloadingState,
    TResult Function()? errorState,
    TResult Function(List<AiMessageModel> messages)? messageloadedState,
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
    required TResult Function(_MessageLoadingState value) messageloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_MessageLoadedState value) messageloadedState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_MessageLoadedState value)? messageloadedState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_MessageLoadedState value)? messageloadedState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements DocsphereAiState {
  const factory _ErrorState() = _$ErrorStateImpl;
}

/// @nodoc
abstract class _$$MessageLoadedStateImplCopyWith<$Res> {
  factory _$$MessageLoadedStateImplCopyWith(_$MessageLoadedStateImpl value,
          $Res Function(_$MessageLoadedStateImpl) then) =
      __$$MessageLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AiMessageModel> messages});
}

/// @nodoc
class __$$MessageLoadedStateImplCopyWithImpl<$Res>
    extends _$DocsphereAiStateCopyWithImpl<$Res, _$MessageLoadedStateImpl>
    implements _$$MessageLoadedStateImplCopyWith<$Res> {
  __$$MessageLoadedStateImplCopyWithImpl(_$MessageLoadedStateImpl _value,
      $Res Function(_$MessageLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsphereAiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessageLoadedStateImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<AiMessageModel>,
    ));
  }
}

/// @nodoc

class _$MessageLoadedStateImpl implements _MessageLoadedState {
  const _$MessageLoadedStateImpl(final List<AiMessageModel> messages)
      : _messages = messages;

  final List<AiMessageModel> _messages;
  @override
  List<AiMessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'DocsphereAiState.messageloadedState(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of DocsphereAiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageLoadedStateImplCopyWith<_$MessageLoadedStateImpl> get copyWith =>
      __$$MessageLoadedStateImplCopyWithImpl<_$MessageLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() messageloadingState,
    required TResult Function() errorState,
    required TResult Function(List<AiMessageModel> messages) messageloadedState,
  }) {
    return messageloadedState(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? messageloadingState,
    TResult? Function()? errorState,
    TResult? Function(List<AiMessageModel> messages)? messageloadedState,
  }) {
    return messageloadedState?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageloadingState,
    TResult Function()? errorState,
    TResult Function(List<AiMessageModel> messages)? messageloadedState,
    required TResult orElse(),
  }) {
    if (messageloadedState != null) {
      return messageloadedState(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_MessageLoadingState value) messageloadingState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_MessageLoadedState value) messageloadedState,
  }) {
    return messageloadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageloadingState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_MessageLoadedState value)? messageloadedState,
  }) {
    return messageloadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageloadingState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_MessageLoadedState value)? messageloadedState,
    required TResult orElse(),
  }) {
    if (messageloadedState != null) {
      return messageloadedState(this);
    }
    return orElse();
  }
}

abstract class _MessageLoadedState implements DocsphereAiState {
  const factory _MessageLoadedState(final List<AiMessageModel> messages) =
      _$MessageLoadedStateImpl;

  List<AiMessageModel> get messages;

  /// Create a copy of DocsphereAiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageLoadedStateImplCopyWith<_$MessageLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
