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
    required TResult Function(ChatPartnerModel chatPartnerModel,
            MessageModel message, String userId, String doctorId)
        sendMessages,
    required TResult Function(String userId, String doctorId) fetchMessages,
    required TResult Function(String userId, String doctorId) fetchNewMessage,
    required TResult Function() fetchAllChatPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatPartnerModel chatPartnerModel, MessageModel message,
            String userId, String doctorId)?
        sendMessages,
    TResult? Function(String userId, String doctorId)? fetchMessages,
    TResult? Function(String userId, String doctorId)? fetchNewMessage,
    TResult? Function()? fetchAllChatPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatPartnerModel chatPartnerModel, MessageModel message,
            String userId, String doctorId)?
        sendMessages,
    TResult Function(String userId, String doctorId)? fetchMessages,
    TResult Function(String userId, String doctorId)? fetchNewMessage,
    TResult Function()? fetchAllChatPartners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessages value) sendMessages,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_FetchNewMessage value) fetchNewMessage,
    required TResult Function(_FetchAllChatPartners value) fetchAllChatPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessages value)? sendMessages,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_FetchNewMessage value)? fetchNewMessage,
    TResult? Function(_FetchAllChatPartners value)? fetchAllChatPartners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessages value)? sendMessages,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_FetchNewMessage value)? fetchNewMessage,
    TResult Function(_FetchAllChatPartners value)? fetchAllChatPartners,
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
abstract class _$$SendMessagesImplCopyWith<$Res> {
  factory _$$SendMessagesImplCopyWith(
          _$SendMessagesImpl value, $Res Function(_$SendMessagesImpl) then) =
      __$$SendMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ChatPartnerModel chatPartnerModel,
      MessageModel message,
      String userId,
      String doctorId});
}

/// @nodoc
class __$$SendMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessagesImpl>
    implements _$$SendMessagesImplCopyWith<$Res> {
  __$$SendMessagesImplCopyWithImpl(
      _$SendMessagesImpl _value, $Res Function(_$SendMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatPartnerModel = null,
    Object? message = null,
    Object? userId = null,
    Object? doctorId = null,
  }) {
    return _then(_$SendMessagesImpl(
      chatPartnerModel: null == chatPartnerModel
          ? _value.chatPartnerModel
          : chatPartnerModel // ignore: cast_nullable_to_non_nullable
              as ChatPartnerModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
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

class _$SendMessagesImpl implements _SendMessages {
  const _$SendMessagesImpl(
      {required this.chatPartnerModel,
      required this.message,
      required this.userId,
      required this.doctorId});

  @override
  final ChatPartnerModel chatPartnerModel;
  @override
  final MessageModel message;
  @override
  final String userId;
  @override
  final String doctorId;

  @override
  String toString() {
    return 'ChatEvent.sendMessages(chatPartnerModel: $chatPartnerModel, message: $message, userId: $userId, doctorId: $doctorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessagesImpl &&
            (identical(other.chatPartnerModel, chatPartnerModel) ||
                other.chatPartnerModel == chatPartnerModel) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chatPartnerModel, message, userId, doctorId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessagesImplCopyWith<_$SendMessagesImpl> get copyWith =>
      __$$SendMessagesImplCopyWithImpl<_$SendMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatPartnerModel chatPartnerModel,
            MessageModel message, String userId, String doctorId)
        sendMessages,
    required TResult Function(String userId, String doctorId) fetchMessages,
    required TResult Function(String userId, String doctorId) fetchNewMessage,
    required TResult Function() fetchAllChatPartners,
  }) {
    return sendMessages(chatPartnerModel, message, userId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatPartnerModel chatPartnerModel, MessageModel message,
            String userId, String doctorId)?
        sendMessages,
    TResult? Function(String userId, String doctorId)? fetchMessages,
    TResult? Function(String userId, String doctorId)? fetchNewMessage,
    TResult? Function()? fetchAllChatPartners,
  }) {
    return sendMessages?.call(chatPartnerModel, message, userId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatPartnerModel chatPartnerModel, MessageModel message,
            String userId, String doctorId)?
        sendMessages,
    TResult Function(String userId, String doctorId)? fetchMessages,
    TResult Function(String userId, String doctorId)? fetchNewMessage,
    TResult Function()? fetchAllChatPartners,
    required TResult orElse(),
  }) {
    if (sendMessages != null) {
      return sendMessages(chatPartnerModel, message, userId, doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessages value) sendMessages,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_FetchNewMessage value) fetchNewMessage,
    required TResult Function(_FetchAllChatPartners value) fetchAllChatPartners,
  }) {
    return sendMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessages value)? sendMessages,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_FetchNewMessage value)? fetchNewMessage,
    TResult? Function(_FetchAllChatPartners value)? fetchAllChatPartners,
  }) {
    return sendMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessages value)? sendMessages,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_FetchNewMessage value)? fetchNewMessage,
    TResult Function(_FetchAllChatPartners value)? fetchAllChatPartners,
    required TResult orElse(),
  }) {
    if (sendMessages != null) {
      return sendMessages(this);
    }
    return orElse();
  }
}

abstract class _SendMessages implements ChatEvent {
  const factory _SendMessages(
      {required final ChatPartnerModel chatPartnerModel,
      required final MessageModel message,
      required final String userId,
      required final String doctorId}) = _$SendMessagesImpl;

  ChatPartnerModel get chatPartnerModel;
  MessageModel get message;
  String get userId;
  String get doctorId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessagesImplCopyWith<_$SendMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMessagesImplCopyWith<$Res> {
  factory _$$FetchMessagesImplCopyWith(
          _$FetchMessagesImpl value, $Res Function(_$FetchMessagesImpl) then) =
      __$$FetchMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String doctorId});
}

/// @nodoc
class __$$FetchMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchMessagesImpl>
    implements _$$FetchMessagesImplCopyWith<$Res> {
  __$$FetchMessagesImplCopyWithImpl(
      _$FetchMessagesImpl _value, $Res Function(_$FetchMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? doctorId = null,
  }) {
    return _then(_$FetchMessagesImpl(
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

class _$FetchMessagesImpl implements _FetchMessages {
  const _$FetchMessagesImpl({required this.userId, required this.doctorId});

  @override
  final String userId;
  @override
  final String doctorId;

  @override
  String toString() {
    return 'ChatEvent.fetchMessages(userId: $userId, doctorId: $doctorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMessagesImpl &&
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
  _$$FetchMessagesImplCopyWith<_$FetchMessagesImpl> get copyWith =>
      __$$FetchMessagesImplCopyWithImpl<_$FetchMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatPartnerModel chatPartnerModel,
            MessageModel message, String userId, String doctorId)
        sendMessages,
    required TResult Function(String userId, String doctorId) fetchMessages,
    required TResult Function(String userId, String doctorId) fetchNewMessage,
    required TResult Function() fetchAllChatPartners,
  }) {
    return fetchMessages(userId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatPartnerModel chatPartnerModel, MessageModel message,
            String userId, String doctorId)?
        sendMessages,
    TResult? Function(String userId, String doctorId)? fetchMessages,
    TResult? Function(String userId, String doctorId)? fetchNewMessage,
    TResult? Function()? fetchAllChatPartners,
  }) {
    return fetchMessages?.call(userId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatPartnerModel chatPartnerModel, MessageModel message,
            String userId, String doctorId)?
        sendMessages,
    TResult Function(String userId, String doctorId)? fetchMessages,
    TResult Function(String userId, String doctorId)? fetchNewMessage,
    TResult Function()? fetchAllChatPartners,
    required TResult orElse(),
  }) {
    if (fetchMessages != null) {
      return fetchMessages(userId, doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessages value) sendMessages,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_FetchNewMessage value) fetchNewMessage,
    required TResult Function(_FetchAllChatPartners value) fetchAllChatPartners,
  }) {
    return fetchMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessages value)? sendMessages,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_FetchNewMessage value)? fetchNewMessage,
    TResult? Function(_FetchAllChatPartners value)? fetchAllChatPartners,
  }) {
    return fetchMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessages value)? sendMessages,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_FetchNewMessage value)? fetchNewMessage,
    TResult Function(_FetchAllChatPartners value)? fetchAllChatPartners,
    required TResult orElse(),
  }) {
    if (fetchMessages != null) {
      return fetchMessages(this);
    }
    return orElse();
  }
}

abstract class _FetchMessages implements ChatEvent {
  const factory _FetchMessages(
      {required final String userId,
      required final String doctorId}) = _$FetchMessagesImpl;

  String get userId;
  String get doctorId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchMessagesImplCopyWith<_$FetchMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchNewMessageImplCopyWith<$Res> {
  factory _$$FetchNewMessageImplCopyWith(_$FetchNewMessageImpl value,
          $Res Function(_$FetchNewMessageImpl) then) =
      __$$FetchNewMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String doctorId});
}

/// @nodoc
class __$$FetchNewMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchNewMessageImpl>
    implements _$$FetchNewMessageImplCopyWith<$Res> {
  __$$FetchNewMessageImplCopyWithImpl(
      _$FetchNewMessageImpl _value, $Res Function(_$FetchNewMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? doctorId = null,
  }) {
    return _then(_$FetchNewMessageImpl(
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

class _$FetchNewMessageImpl implements _FetchNewMessage {
  const _$FetchNewMessageImpl({required this.userId, required this.doctorId});

  @override
  final String userId;
  @override
  final String doctorId;

  @override
  String toString() {
    return 'ChatEvent.fetchNewMessage(userId: $userId, doctorId: $doctorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchNewMessageImpl &&
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
  _$$FetchNewMessageImplCopyWith<_$FetchNewMessageImpl> get copyWith =>
      __$$FetchNewMessageImplCopyWithImpl<_$FetchNewMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatPartnerModel chatPartnerModel,
            MessageModel message, String userId, String doctorId)
        sendMessages,
    required TResult Function(String userId, String doctorId) fetchMessages,
    required TResult Function(String userId, String doctorId) fetchNewMessage,
    required TResult Function() fetchAllChatPartners,
  }) {
    return fetchNewMessage(userId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatPartnerModel chatPartnerModel, MessageModel message,
            String userId, String doctorId)?
        sendMessages,
    TResult? Function(String userId, String doctorId)? fetchMessages,
    TResult? Function(String userId, String doctorId)? fetchNewMessage,
    TResult? Function()? fetchAllChatPartners,
  }) {
    return fetchNewMessage?.call(userId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatPartnerModel chatPartnerModel, MessageModel message,
            String userId, String doctorId)?
        sendMessages,
    TResult Function(String userId, String doctorId)? fetchMessages,
    TResult Function(String userId, String doctorId)? fetchNewMessage,
    TResult Function()? fetchAllChatPartners,
    required TResult orElse(),
  }) {
    if (fetchNewMessage != null) {
      return fetchNewMessage(userId, doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessages value) sendMessages,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_FetchNewMessage value) fetchNewMessage,
    required TResult Function(_FetchAllChatPartners value) fetchAllChatPartners,
  }) {
    return fetchNewMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessages value)? sendMessages,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_FetchNewMessage value)? fetchNewMessage,
    TResult? Function(_FetchAllChatPartners value)? fetchAllChatPartners,
  }) {
    return fetchNewMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessages value)? sendMessages,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_FetchNewMessage value)? fetchNewMessage,
    TResult Function(_FetchAllChatPartners value)? fetchAllChatPartners,
    required TResult orElse(),
  }) {
    if (fetchNewMessage != null) {
      return fetchNewMessage(this);
    }
    return orElse();
  }
}

abstract class _FetchNewMessage implements ChatEvent {
  const factory _FetchNewMessage(
      {required final String userId,
      required final String doctorId}) = _$FetchNewMessageImpl;

  String get userId;
  String get doctorId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchNewMessageImplCopyWith<_$FetchNewMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllChatPartnersImplCopyWith<$Res> {
  factory _$$FetchAllChatPartnersImplCopyWith(_$FetchAllChatPartnersImpl value,
          $Res Function(_$FetchAllChatPartnersImpl) then) =
      __$$FetchAllChatPartnersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllChatPartnersImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchAllChatPartnersImpl>
    implements _$$FetchAllChatPartnersImplCopyWith<$Res> {
  __$$FetchAllChatPartnersImplCopyWithImpl(_$FetchAllChatPartnersImpl _value,
      $Res Function(_$FetchAllChatPartnersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllChatPartnersImpl implements _FetchAllChatPartners {
  const _$FetchAllChatPartnersImpl();

  @override
  String toString() {
    return 'ChatEvent.fetchAllChatPartners()';
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
    required TResult Function(ChatPartnerModel chatPartnerModel,
            MessageModel message, String userId, String doctorId)
        sendMessages,
    required TResult Function(String userId, String doctorId) fetchMessages,
    required TResult Function(String userId, String doctorId) fetchNewMessage,
    required TResult Function() fetchAllChatPartners,
  }) {
    return fetchAllChatPartners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatPartnerModel chatPartnerModel, MessageModel message,
            String userId, String doctorId)?
        sendMessages,
    TResult? Function(String userId, String doctorId)? fetchMessages,
    TResult? Function(String userId, String doctorId)? fetchNewMessage,
    TResult? Function()? fetchAllChatPartners,
  }) {
    return fetchAllChatPartners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatPartnerModel chatPartnerModel, MessageModel message,
            String userId, String doctorId)?
        sendMessages,
    TResult Function(String userId, String doctorId)? fetchMessages,
    TResult Function(String userId, String doctorId)? fetchNewMessage,
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
    required TResult Function(_SendMessages value) sendMessages,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_FetchNewMessage value) fetchNewMessage,
    required TResult Function(_FetchAllChatPartners value) fetchAllChatPartners,
  }) {
    return fetchAllChatPartners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessages value)? sendMessages,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_FetchNewMessage value)? fetchNewMessage,
    TResult? Function(_FetchAllChatPartners value)? fetchAllChatPartners,
  }) {
    return fetchAllChatPartners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessages value)? sendMessages,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_FetchNewMessage value)? fetchNewMessage,
    TResult Function(_FetchAllChatPartners value)? fetchAllChatPartners,
    required TResult orElse(),
  }) {
    if (fetchAllChatPartners != null) {
      return fetchAllChatPartners(this);
    }
    return orElse();
  }
}

abstract class _FetchAllChatPartners implements ChatEvent {
  const factory _FetchAllChatPartners() = _$FetchAllChatPartnersImpl;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() messageLoading,
    required TResult Function() chatPartnersLoading,
    required TResult Function() loadedState,
    required TResult Function(List<MessageModel> messages) messagesLoaded,
    required TResult Function(List<MessageModel> messages) newMessagesLoaded,
    required TResult Function(List<ChatPartnerModel> messages)
        chatPartnersLoaded,
    required TResult Function() errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? messageLoading,
    TResult? Function()? chatPartnersLoading,
    TResult? Function()? loadedState,
    TResult? Function(List<MessageModel> messages)? messagesLoaded,
    TResult? Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageLoading,
    TResult Function()? chatPartnersLoading,
    TResult Function()? loadedState,
    TResult Function(List<MessageModel> messages)? messagesLoaded,
    TResult Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult Function()? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_MessageLoadingState value) messageLoading,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_MessageLoadedState value) messagesLoaded,
    required TResult Function(_NewMessagesLoaded value) newMessagesLoaded,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageLoading,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_MessageLoadedState value)? messagesLoaded,
    TResult? Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageLoading,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_MessageLoadedState value)? messagesLoaded,
    TResult Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
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
    required TResult Function() messageLoading,
    required TResult Function() chatPartnersLoading,
    required TResult Function() loadedState,
    required TResult Function(List<MessageModel> messages) messagesLoaded,
    required TResult Function(List<MessageModel> messages) newMessagesLoaded,
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
    TResult? Function()? messageLoading,
    TResult? Function()? chatPartnersLoading,
    TResult? Function()? loadedState,
    TResult? Function(List<MessageModel> messages)? messagesLoaded,
    TResult? Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageLoading,
    TResult Function()? chatPartnersLoading,
    TResult Function()? loadedState,
    TResult Function(List<MessageModel> messages)? messagesLoaded,
    TResult Function(List<MessageModel> messages)? newMessagesLoaded,
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
    required TResult Function(_MessageLoadingState value) messageLoading,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_MessageLoadedState value) messagesLoaded,
    required TResult Function(_NewMessagesLoaded value) newMessagesLoaded,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageLoading,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_MessageLoadedState value)? messagesLoaded,
    TResult? Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageLoading,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_MessageLoadedState value)? messagesLoaded,
    TResult Function(_NewMessagesLoaded value)? newMessagesLoaded,
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

abstract class _InitialState implements ChatState {
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
    extends _$ChatStateCopyWithImpl<$Res, _$MessageLoadingStateImpl>
    implements _$$MessageLoadingStateImplCopyWith<$Res> {
  __$$MessageLoadingStateImplCopyWithImpl(_$MessageLoadingStateImpl _value,
      $Res Function(_$MessageLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MessageLoadingStateImpl implements _MessageLoadingState {
  const _$MessageLoadingStateImpl();

  @override
  String toString() {
    return 'ChatState.messageLoading()';
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
    required TResult Function() messageLoading,
    required TResult Function() chatPartnersLoading,
    required TResult Function() loadedState,
    required TResult Function(List<MessageModel> messages) messagesLoaded,
    required TResult Function(List<MessageModel> messages) newMessagesLoaded,
    required TResult Function(List<ChatPartnerModel> messages)
        chatPartnersLoaded,
    required TResult Function() errorState,
  }) {
    return messageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? messageLoading,
    TResult? Function()? chatPartnersLoading,
    TResult? Function()? loadedState,
    TResult? Function(List<MessageModel> messages)? messagesLoaded,
    TResult? Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return messageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageLoading,
    TResult Function()? chatPartnersLoading,
    TResult Function()? loadedState,
    TResult Function(List<MessageModel> messages)? messagesLoaded,
    TResult Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (messageLoading != null) {
      return messageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_MessageLoadingState value) messageLoading,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_MessageLoadedState value) messagesLoaded,
    required TResult Function(_NewMessagesLoaded value) newMessagesLoaded,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return messageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageLoading,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_MessageLoadedState value)? messagesLoaded,
    TResult? Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return messageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageLoading,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_MessageLoadedState value)? messagesLoaded,
    TResult Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (messageLoading != null) {
      return messageLoading(this);
    }
    return orElse();
  }
}

abstract class _MessageLoadingState implements ChatState {
  const factory _MessageLoadingState() = _$MessageLoadingStateImpl;
}

/// @nodoc
abstract class _$$ChatPartnersLoadingImplCopyWith<$Res> {
  factory _$$ChatPartnersLoadingImplCopyWith(_$ChatPartnersLoadingImpl value,
          $Res Function(_$ChatPartnersLoadingImpl) then) =
      __$$ChatPartnersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatPartnersLoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatPartnersLoadingImpl>
    implements _$$ChatPartnersLoadingImplCopyWith<$Res> {
  __$$ChatPartnersLoadingImplCopyWithImpl(_$ChatPartnersLoadingImpl _value,
      $Res Function(_$ChatPartnersLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatPartnersLoadingImpl implements _ChatPartnersLoading {
  const _$ChatPartnersLoadingImpl();

  @override
  String toString() {
    return 'ChatState.chatPartnersLoading()';
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
    required TResult Function() messageLoading,
    required TResult Function() chatPartnersLoading,
    required TResult Function() loadedState,
    required TResult Function(List<MessageModel> messages) messagesLoaded,
    required TResult Function(List<MessageModel> messages) newMessagesLoaded,
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
    TResult? Function()? messageLoading,
    TResult? Function()? chatPartnersLoading,
    TResult? Function()? loadedState,
    TResult? Function(List<MessageModel> messages)? messagesLoaded,
    TResult? Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return chatPartnersLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageLoading,
    TResult Function()? chatPartnersLoading,
    TResult Function()? loadedState,
    TResult Function(List<MessageModel> messages)? messagesLoaded,
    TResult Function(List<MessageModel> messages)? newMessagesLoaded,
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
    required TResult Function(_MessageLoadingState value) messageLoading,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_MessageLoadedState value) messagesLoaded,
    required TResult Function(_NewMessagesLoaded value) newMessagesLoaded,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return chatPartnersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageLoading,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_MessageLoadedState value)? messagesLoaded,
    TResult? Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return chatPartnersLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageLoading,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_MessageLoadedState value)? messagesLoaded,
    TResult Function(_NewMessagesLoaded value)? newMessagesLoaded,
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

abstract class _ChatPartnersLoading implements ChatState {
  const factory _ChatPartnersLoading() = _$ChatPartnersLoadingImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadedStateImpl implements _LoadedState {
  const _$LoadedStateImpl();

  @override
  String toString() {
    return 'ChatState.loadedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() messageLoading,
    required TResult Function() chatPartnersLoading,
    required TResult Function() loadedState,
    required TResult Function(List<MessageModel> messages) messagesLoaded,
    required TResult Function(List<MessageModel> messages) newMessagesLoaded,
    required TResult Function(List<ChatPartnerModel> messages)
        chatPartnersLoaded,
    required TResult Function() errorState,
  }) {
    return loadedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? messageLoading,
    TResult? Function()? chatPartnersLoading,
    TResult? Function()? loadedState,
    TResult? Function(List<MessageModel> messages)? messagesLoaded,
    TResult? Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return loadedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageLoading,
    TResult Function()? chatPartnersLoading,
    TResult Function()? loadedState,
    TResult Function(List<MessageModel> messages)? messagesLoaded,
    TResult Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_MessageLoadingState value) messageLoading,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_MessageLoadedState value) messagesLoaded,
    required TResult Function(_NewMessagesLoaded value) newMessagesLoaded,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageLoading,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_MessageLoadedState value)? messagesLoaded,
    TResult? Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageLoading,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_MessageLoadedState value)? messagesLoaded,
    TResult Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements ChatState {
  const factory _LoadedState() = _$LoadedStateImpl;
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
    return 'ChatState.messagesLoaded(messages: $messages)';
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
    required TResult Function() messageLoading,
    required TResult Function() chatPartnersLoading,
    required TResult Function() loadedState,
    required TResult Function(List<MessageModel> messages) messagesLoaded,
    required TResult Function(List<MessageModel> messages) newMessagesLoaded,
    required TResult Function(List<ChatPartnerModel> messages)
        chatPartnersLoaded,
    required TResult Function() errorState,
  }) {
    return messagesLoaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? messageLoading,
    TResult? Function()? chatPartnersLoading,
    TResult? Function()? loadedState,
    TResult? Function(List<MessageModel> messages)? messagesLoaded,
    TResult? Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return messagesLoaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageLoading,
    TResult Function()? chatPartnersLoading,
    TResult Function()? loadedState,
    TResult Function(List<MessageModel> messages)? messagesLoaded,
    TResult Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (messagesLoaded != null) {
      return messagesLoaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_MessageLoadingState value) messageLoading,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_MessageLoadedState value) messagesLoaded,
    required TResult Function(_NewMessagesLoaded value) newMessagesLoaded,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return messagesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageLoading,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_MessageLoadedState value)? messagesLoaded,
    TResult? Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return messagesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageLoading,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_MessageLoadedState value)? messagesLoaded,
    TResult Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (messagesLoaded != null) {
      return messagesLoaded(this);
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
abstract class _$$NewMessagesLoadedImplCopyWith<$Res> {
  factory _$$NewMessagesLoadedImplCopyWith(_$NewMessagesLoadedImpl value,
          $Res Function(_$NewMessagesLoadedImpl) then) =
      __$$NewMessagesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$NewMessagesLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$NewMessagesLoadedImpl>
    implements _$$NewMessagesLoadedImplCopyWith<$Res> {
  __$$NewMessagesLoadedImplCopyWithImpl(_$NewMessagesLoadedImpl _value,
      $Res Function(_$NewMessagesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$NewMessagesLoadedImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$NewMessagesLoadedImpl implements _NewMessagesLoaded {
  const _$NewMessagesLoadedImpl(final List<MessageModel> messages)
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
    return 'ChatState.newMessagesLoaded(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMessagesLoadedImpl &&
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
  _$$NewMessagesLoadedImplCopyWith<_$NewMessagesLoadedImpl> get copyWith =>
      __$$NewMessagesLoadedImplCopyWithImpl<_$NewMessagesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() messageLoading,
    required TResult Function() chatPartnersLoading,
    required TResult Function() loadedState,
    required TResult Function(List<MessageModel> messages) messagesLoaded,
    required TResult Function(List<MessageModel> messages) newMessagesLoaded,
    required TResult Function(List<ChatPartnerModel> messages)
        chatPartnersLoaded,
    required TResult Function() errorState,
  }) {
    return newMessagesLoaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? messageLoading,
    TResult? Function()? chatPartnersLoading,
    TResult? Function()? loadedState,
    TResult? Function(List<MessageModel> messages)? messagesLoaded,
    TResult? Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return newMessagesLoaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageLoading,
    TResult Function()? chatPartnersLoading,
    TResult Function()? loadedState,
    TResult Function(List<MessageModel> messages)? messagesLoaded,
    TResult Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (newMessagesLoaded != null) {
      return newMessagesLoaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_MessageLoadingState value) messageLoading,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_MessageLoadedState value) messagesLoaded,
    required TResult Function(_NewMessagesLoaded value) newMessagesLoaded,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return newMessagesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageLoading,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_MessageLoadedState value)? messagesLoaded,
    TResult? Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return newMessagesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageLoading,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_MessageLoadedState value)? messagesLoaded,
    TResult Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (newMessagesLoaded != null) {
      return newMessagesLoaded(this);
    }
    return orElse();
  }
}

abstract class _NewMessagesLoaded implements ChatState {
  const factory _NewMessagesLoaded(final List<MessageModel> messages) =
      _$NewMessagesLoadedImpl;

  List<MessageModel> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewMessagesLoadedImplCopyWith<_$NewMessagesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ChatStateCopyWithImpl<$Res, _$ChatPartnersLoadedImpl>
    implements _$$ChatPartnersLoadedImplCopyWith<$Res> {
  __$$ChatPartnersLoadedImplCopyWithImpl(_$ChatPartnersLoadedImpl _value,
      $Res Function(_$ChatPartnersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
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
    return 'ChatState.chatPartnersLoaded(messages: $messages)';
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

  /// Create a copy of ChatState
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
    required TResult Function() messageLoading,
    required TResult Function() chatPartnersLoading,
    required TResult Function() loadedState,
    required TResult Function(List<MessageModel> messages) messagesLoaded,
    required TResult Function(List<MessageModel> messages) newMessagesLoaded,
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
    TResult? Function()? messageLoading,
    TResult? Function()? chatPartnersLoading,
    TResult? Function()? loadedState,
    TResult? Function(List<MessageModel> messages)? messagesLoaded,
    TResult? Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return chatPartnersLoaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageLoading,
    TResult Function()? chatPartnersLoading,
    TResult Function()? loadedState,
    TResult Function(List<MessageModel> messages)? messagesLoaded,
    TResult Function(List<MessageModel> messages)? newMessagesLoaded,
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
    required TResult Function(_MessageLoadingState value) messageLoading,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_MessageLoadedState value) messagesLoaded,
    required TResult Function(_NewMessagesLoaded value) newMessagesLoaded,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return chatPartnersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageLoading,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_MessageLoadedState value)? messagesLoaded,
    TResult? Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return chatPartnersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageLoading,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_MessageLoadedState value)? messagesLoaded,
    TResult Function(_NewMessagesLoaded value)? newMessagesLoaded,
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

abstract class _ChatPartnersLoaded implements ChatState {
  const factory _ChatPartnersLoaded(final List<ChatPartnerModel> messages) =
      _$ChatPartnersLoadedImpl;

  List<ChatPartnerModel> get messages;

  /// Create a copy of ChatState
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
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'ChatState.errorState()';
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
    required TResult Function() messageLoading,
    required TResult Function() chatPartnersLoading,
    required TResult Function() loadedState,
    required TResult Function(List<MessageModel> messages) messagesLoaded,
    required TResult Function(List<MessageModel> messages) newMessagesLoaded,
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
    TResult? Function()? messageLoading,
    TResult? Function()? chatPartnersLoading,
    TResult? Function()? loadedState,
    TResult? Function(List<MessageModel> messages)? messagesLoaded,
    TResult? Function(List<MessageModel> messages)? newMessagesLoaded,
    TResult? Function(List<ChatPartnerModel> messages)? chatPartnersLoaded,
    TResult? Function()? errorState,
  }) {
    return errorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? messageLoading,
    TResult Function()? chatPartnersLoading,
    TResult Function()? loadedState,
    TResult Function(List<MessageModel> messages)? messagesLoaded,
    TResult Function(List<MessageModel> messages)? newMessagesLoaded,
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
    required TResult Function(_MessageLoadingState value) messageLoading,
    required TResult Function(_ChatPartnersLoading value) chatPartnersLoading,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_MessageLoadedState value) messagesLoaded,
    required TResult Function(_NewMessagesLoaded value) newMessagesLoaded,
    required TResult Function(_ChatPartnersLoaded value) chatPartnersLoaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_MessageLoadingState value)? messageLoading,
    TResult? Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_MessageLoadedState value)? messagesLoaded,
    TResult? Function(_NewMessagesLoaded value)? newMessagesLoaded,
    TResult? Function(_ChatPartnersLoaded value)? chatPartnersLoaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_MessageLoadingState value)? messageLoading,
    TResult Function(_ChatPartnersLoading value)? chatPartnersLoading,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_MessageLoadedState value)? messagesLoaded,
    TResult Function(_NewMessagesLoaded value)? newMessagesLoaded,
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

abstract class _ErrorState implements ChatState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
