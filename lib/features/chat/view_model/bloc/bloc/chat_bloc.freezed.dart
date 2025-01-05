// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId) fetchMessage,
    required TResult Function(String userId, String doctorId) createChatRoom,
    required TResult Function(String roomId, String senderId, String text)
        sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId)? fetchMessage,
    TResult? Function(String userId, String doctorId)? createChatRoom,
    TResult? Function(String roomId, String senderId, String text)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId)? fetchMessage,
    TResult Function(String userId, String doctorId)? createChatRoom,
    TResult Function(String roomId, String senderId, String text)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessage value) fetchMessage,
    required TResult Function(CreateChatRoom value) createChatRoom,
    required TResult Function(SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessage value)? fetchMessage,
    TResult? Function(CreateChatRoom value)? createChatRoom,
    TResult? Function(SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessage value)? fetchMessage,
    TResult Function(CreateChatRoom value)? createChatRoom,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchMessageImplCopyWith<$Res> {
  factory _$$FetchMessageImplCopyWith(
          _$FetchMessageImpl value, $Res Function(_$FetchMessageImpl) then) =
      __$$FetchMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$FetchMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchMessageImpl>
    implements _$$FetchMessageImplCopyWith<$Res> {
  __$$FetchMessageImplCopyWithImpl(
      _$FetchMessageImpl _value, $Res Function(_$FetchMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$FetchMessageImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchMessageImpl implements FetchMessage {
  const _$FetchMessageImpl({required this.roomId});

  @override
  final String roomId;

  @override
  String toString() {
    return 'ChatEvent.fetchMessage(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMessageImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMessageImplCopyWith<_$FetchMessageImpl> get copyWith =>
      __$$FetchMessageImplCopyWithImpl<_$FetchMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId) fetchMessage,
    required TResult Function(String userId, String doctorId) createChatRoom,
    required TResult Function(String roomId, String senderId, String text)
        sendMessage,
  }) {
    return fetchMessage(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId)? fetchMessage,
    TResult? Function(String userId, String doctorId)? createChatRoom,
    TResult? Function(String roomId, String senderId, String text)? sendMessage,
  }) {
    return fetchMessage?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId)? fetchMessage,
    TResult Function(String userId, String doctorId)? createChatRoom,
    TResult Function(String roomId, String senderId, String text)? sendMessage,
    required TResult orElse(),
  }) {
    if (fetchMessage != null) {
      return fetchMessage(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessage value) fetchMessage,
    required TResult Function(CreateChatRoom value) createChatRoom,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return fetchMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessage value)? fetchMessage,
    TResult? Function(CreateChatRoom value)? createChatRoom,
    TResult? Function(SendMessage value)? sendMessage,
  }) {
    return fetchMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessage value)? fetchMessage,
    TResult Function(CreateChatRoom value)? createChatRoom,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (fetchMessage != null) {
      return fetchMessage(this);
    }
    return orElse();
  }
}

abstract class FetchMessage implements ChatEvent {
  const factory FetchMessage({required final String roomId}) =
      _$FetchMessageImpl;

  String get roomId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchMessageImplCopyWith<_$FetchMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateChatRoomImplCopyWith<$Res> {
  factory _$$CreateChatRoomImplCopyWith(_$CreateChatRoomImpl value,
          $Res Function(_$CreateChatRoomImpl) then) =
      __$$CreateChatRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String doctorId});
}

/// @nodoc
class __$$CreateChatRoomImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$CreateChatRoomImpl>
    implements _$$CreateChatRoomImplCopyWith<$Res> {
  __$$CreateChatRoomImplCopyWithImpl(
      _$CreateChatRoomImpl _value, $Res Function(_$CreateChatRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? doctorId = null,
  }) {
    return _then(_$CreateChatRoomImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateChatRoomImpl implements CreateChatRoom {
  const _$CreateChatRoomImpl({required this.userId, required this.doctorId});

  @override
  final String userId;
  @override
  final String doctorId;

  @override
  String toString() {
    return 'ChatEvent.createChatRoom(userId: $userId, doctorId: $doctorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChatRoomImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, doctorId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChatRoomImplCopyWith<_$CreateChatRoomImpl> get copyWith =>
      __$$CreateChatRoomImplCopyWithImpl<_$CreateChatRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId) fetchMessage,
    required TResult Function(String userId, String doctorId) createChatRoom,
    required TResult Function(String roomId, String senderId, String text)
        sendMessage,
  }) {
    return createChatRoom(userId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId)? fetchMessage,
    TResult? Function(String userId, String doctorId)? createChatRoom,
    TResult? Function(String roomId, String senderId, String text)? sendMessage,
  }) {
    return createChatRoom?.call(userId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId)? fetchMessage,
    TResult Function(String userId, String doctorId)? createChatRoom,
    TResult Function(String roomId, String senderId, String text)? sendMessage,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(userId, doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessage value) fetchMessage,
    required TResult Function(CreateChatRoom value) createChatRoom,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return createChatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessage value)? fetchMessage,
    TResult? Function(CreateChatRoom value)? createChatRoom,
    TResult? Function(SendMessage value)? sendMessage,
  }) {
    return createChatRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessage value)? fetchMessage,
    TResult Function(CreateChatRoom value)? createChatRoom,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(this);
    }
    return orElse();
  }
}

abstract class CreateChatRoom implements ChatEvent {
  const factory CreateChatRoom(
      {required final String userId,
      required final String doctorId}) = _$CreateChatRoomImpl;

  String get userId;
  String get doctorId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateChatRoomImplCopyWith<_$CreateChatRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId, String senderId, String text});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? senderId = null,
    Object? text = null,
  }) {
    return _then(_$SendMessageImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements SendMessage {
  const _$SendMessageImpl(
      {required this.roomId, required this.senderId, required this.text});

  @override
  final String roomId;
  @override
  final String senderId;
  @override
  final String text;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(roomId: $roomId, senderId: $senderId, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, senderId, text);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId) fetchMessage,
    required TResult Function(String userId, String doctorId) createChatRoom,
    required TResult Function(String roomId, String senderId, String text)
        sendMessage,
  }) {
    return sendMessage(roomId, senderId, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId)? fetchMessage,
    TResult? Function(String userId, String doctorId)? createChatRoom,
    TResult? Function(String roomId, String senderId, String text)? sendMessage,
  }) {
    return sendMessage?.call(roomId, senderId, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId)? fetchMessage,
    TResult Function(String userId, String doctorId)? createChatRoom,
    TResult Function(String roomId, String senderId, String text)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(roomId, senderId, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessage value) fetchMessage,
    required TResult Function(CreateChatRoom value) createChatRoom,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessage value)? fetchMessage,
    TResult? Function(CreateChatRoom value)? createChatRoom,
    TResult? Function(SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessage value)? fetchMessage,
    TResult Function(CreateChatRoom value)? createChatRoom,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements ChatEvent {
  const factory SendMessage(
      {required final String roomId,
      required final String senderId,
      required final String text}) = _$SendMessageImpl;

  String get roomId;
  String get senderId;
  String get text;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() chatLoadingState,
    required TResult Function(List<MessageModel> messages) messageLoadedState,
    required TResult Function(String roomId) chatRoomCreated,
    required TResult Function(String errorMessage) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatLoadingState,
    TResult? Function(List<MessageModel> messages)? messageLoadedState,
    TResult? Function(String roomId)? chatRoomCreated,
    TResult? Function(String errorMessage)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatLoadingState,
    TResult Function(List<MessageModel> messages)? messageLoadedState,
    TResult Function(String roomId)? chatRoomCreated,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_ChatLoadingState value) chatLoadingState,
    required TResult Function(_MessageLoadedState value) messageLoadedState,
    required TResult Function(_ChatRoomCreated value) chatRoomCreated,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatLoadingState value)? chatLoadingState,
    TResult? Function(_MessageLoadedState value)? messageLoadedState,
    TResult? Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatLoadingState value)? chatLoadingState,
    TResult Function(_MessageLoadedState value)? messageLoadedState,
    TResult Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
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
    extends _$ChatStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ChatState.initialState()';
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
    required TResult Function() chatLoadingState,
    required TResult Function(List<MessageModel> messages) messageLoadedState,
    required TResult Function(String roomId) chatRoomCreated,
    required TResult Function(String errorMessage) errorState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatLoadingState,
    TResult? Function(List<MessageModel> messages)? messageLoadedState,
    TResult? Function(String roomId)? chatRoomCreated,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatLoadingState,
    TResult Function(List<MessageModel> messages)? messageLoadedState,
    TResult Function(String roomId)? chatRoomCreated,
    TResult Function(String errorMessage)? errorState,
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
    required TResult Function(_ChatLoadingState value) chatLoadingState,
    required TResult Function(_MessageLoadedState value) messageLoadedState,
    required TResult Function(_ChatRoomCreated value) chatRoomCreated,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatLoadingState value)? chatLoadingState,
    TResult? Function(_MessageLoadedState value)? messageLoadedState,
    TResult? Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatLoadingState value)? chatLoadingState,
    TResult Function(_MessageLoadedState value)? messageLoadedState,
    TResult Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ChatState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$ChatLoadingStateImplCopyWith<$Res> {
  factory _$$ChatLoadingStateImplCopyWith(_$ChatLoadingStateImpl value,
          $Res Function(_$ChatLoadingStateImpl) then) =
      __$$ChatLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatLoadingStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatLoadingStateImpl>
    implements _$$ChatLoadingStateImplCopyWith<$Res> {
  __$$ChatLoadingStateImplCopyWithImpl(_$ChatLoadingStateImpl _value,
      $Res Function(_$ChatLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatLoadingStateImpl implements _ChatLoadingState {
  const _$ChatLoadingStateImpl();

  @override
  String toString() {
    return 'ChatState.chatLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() chatLoadingState,
    required TResult Function(List<MessageModel> messages) messageLoadedState,
    required TResult Function(String roomId) chatRoomCreated,
    required TResult Function(String errorMessage) errorState,
  }) {
    return chatLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatLoadingState,
    TResult? Function(List<MessageModel> messages)? messageLoadedState,
    TResult? Function(String roomId)? chatRoomCreated,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return chatLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatLoadingState,
    TResult Function(List<MessageModel> messages)? messageLoadedState,
    TResult Function(String roomId)? chatRoomCreated,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (chatLoadingState != null) {
      return chatLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_ChatLoadingState value) chatLoadingState,
    required TResult Function(_MessageLoadedState value) messageLoadedState,
    required TResult Function(_ChatRoomCreated value) chatRoomCreated,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return chatLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatLoadingState value)? chatLoadingState,
    TResult? Function(_MessageLoadedState value)? messageLoadedState,
    TResult? Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return chatLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatLoadingState value)? chatLoadingState,
    TResult Function(_MessageLoadedState value)? messageLoadedState,
    TResult Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (chatLoadingState != null) {
      return chatLoadingState(this);
    }
    return orElse();
  }
}

abstract class _ChatLoadingState implements ChatState {
  const factory _ChatLoadingState() = _$ChatLoadingStateImpl;
}

/// @nodoc
abstract class _$$MessageLoadedStateImplCopyWith<$Res> {
  factory _$$MessageLoadedStateImplCopyWith(_$MessageLoadedStateImpl value,
          $Res Function(_$MessageLoadedStateImpl) then) =
      __$$MessageLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$MessageLoadedStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageLoadedStateImpl>
    implements _$$MessageLoadedStateImplCopyWith<$Res> {
  __$$MessageLoadedStateImplCopyWithImpl(_$MessageLoadedStateImpl _value,
      $Res Function(_$MessageLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
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
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$MessageLoadedStateImpl implements _MessageLoadedState {
  const _$MessageLoadedStateImpl(final List<MessageModel> messages)
      : _messages = messages;

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.messageLoadedState(messages: $messages)';
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

  /// Create a copy of ChatState
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
    required TResult Function() chatLoadingState,
    required TResult Function(List<MessageModel> messages) messageLoadedState,
    required TResult Function(String roomId) chatRoomCreated,
    required TResult Function(String errorMessage) errorState,
  }) {
    return messageLoadedState(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatLoadingState,
    TResult? Function(List<MessageModel> messages)? messageLoadedState,
    TResult? Function(String roomId)? chatRoomCreated,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return messageLoadedState?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatLoadingState,
    TResult Function(List<MessageModel> messages)? messageLoadedState,
    TResult Function(String roomId)? chatRoomCreated,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (messageLoadedState != null) {
      return messageLoadedState(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_ChatLoadingState value) chatLoadingState,
    required TResult Function(_MessageLoadedState value) messageLoadedState,
    required TResult Function(_ChatRoomCreated value) chatRoomCreated,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return messageLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatLoadingState value)? chatLoadingState,
    TResult? Function(_MessageLoadedState value)? messageLoadedState,
    TResult? Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return messageLoadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatLoadingState value)? chatLoadingState,
    TResult Function(_MessageLoadedState value)? messageLoadedState,
    TResult Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (messageLoadedState != null) {
      return messageLoadedState(this);
    }
    return orElse();
  }
}

abstract class _MessageLoadedState implements ChatState {
  const factory _MessageLoadedState(final List<MessageModel> messages) =
      _$MessageLoadedStateImpl;

  List<MessageModel> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageLoadedStateImplCopyWith<_$MessageLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatRoomCreatedImplCopyWith<$Res> {
  factory _$$ChatRoomCreatedImplCopyWith(_$ChatRoomCreatedImpl value,
          $Res Function(_$ChatRoomCreatedImpl) then) =
      __$$ChatRoomCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$ChatRoomCreatedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatRoomCreatedImpl>
    implements _$$ChatRoomCreatedImplCopyWith<$Res> {
  __$$ChatRoomCreatedImplCopyWithImpl(
      _$ChatRoomCreatedImpl _value, $Res Function(_$ChatRoomCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$ChatRoomCreatedImpl(
      null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatRoomCreatedImpl implements _ChatRoomCreated {
  const _$ChatRoomCreatedImpl(this.roomId);

  @override
  final String roomId;

  @override
  String toString() {
    return 'ChatState.chatRoomCreated(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomCreatedImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomCreatedImplCopyWith<_$ChatRoomCreatedImpl> get copyWith =>
      __$$ChatRoomCreatedImplCopyWithImpl<_$ChatRoomCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() chatLoadingState,
    required TResult Function(List<MessageModel> messages) messageLoadedState,
    required TResult Function(String roomId) chatRoomCreated,
    required TResult Function(String errorMessage) errorState,
  }) {
    return chatRoomCreated(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatLoadingState,
    TResult? Function(List<MessageModel> messages)? messageLoadedState,
    TResult? Function(String roomId)? chatRoomCreated,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return chatRoomCreated?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatLoadingState,
    TResult Function(List<MessageModel> messages)? messageLoadedState,
    TResult Function(String roomId)? chatRoomCreated,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (chatRoomCreated != null) {
      return chatRoomCreated(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_ChatLoadingState value) chatLoadingState,
    required TResult Function(_MessageLoadedState value) messageLoadedState,
    required TResult Function(_ChatRoomCreated value) chatRoomCreated,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return chatRoomCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatLoadingState value)? chatLoadingState,
    TResult? Function(_MessageLoadedState value)? messageLoadedState,
    TResult? Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return chatRoomCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatLoadingState value)? chatLoadingState,
    TResult Function(_MessageLoadedState value)? messageLoadedState,
    TResult Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (chatRoomCreated != null) {
      return chatRoomCreated(this);
    }
    return orElse();
  }
}

abstract class _ChatRoomCreated implements ChatState {
  const factory _ChatRoomCreated(final String roomId) = _$ChatRoomCreatedImpl;

  String get roomId;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoomCreatedImplCopyWith<_$ChatRoomCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ChatState.errorState(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ChatState
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
    required TResult Function() chatLoadingState,
    required TResult Function(List<MessageModel> messages) messageLoadedState,
    required TResult Function(String roomId) chatRoomCreated,
    required TResult Function(String errorMessage) errorState,
  }) {
    return errorState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? chatLoadingState,
    TResult? Function(List<MessageModel> messages)? messageLoadedState,
    TResult? Function(String roomId)? chatRoomCreated,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return errorState?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? chatLoadingState,
    TResult Function(List<MessageModel> messages)? messageLoadedState,
    TResult Function(String roomId)? chatRoomCreated,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_ChatLoadingState value) chatLoadingState,
    required TResult Function(_MessageLoadedState value) messageLoadedState,
    required TResult Function(_ChatRoomCreated value) chatRoomCreated,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_ChatLoadingState value)? chatLoadingState,
    TResult? Function(_MessageLoadedState value)? messageLoadedState,
    TResult? Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_ChatLoadingState value)? chatLoadingState,
    TResult Function(_MessageLoadedState value)? messageLoadedState,
    TResult Function(_ChatRoomCreated value)? chatRoomCreated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements ChatState {
  const factory _ErrorState(final String errorMessage) = _$ErrorStateImpl;

  String get errorMessage;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
