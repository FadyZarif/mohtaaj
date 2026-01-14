// lib/features/chats/logic/socket/socket_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_state.freezed.dart';

@freezed
abstract class SocketState with _$SocketState {
  const factory SocketState.initial() = _Initial;
  const factory SocketState.connecting() = _Connecting;
  const factory SocketState.connected() = _Connected;
  const factory SocketState.disconnected() = _Disconnected;
  const factory SocketState.authInvalid(String message) = _AuthInvalid;
  const factory SocketState.tokenExpiring(String expiresAt) = _TokenExpiring;
  const factory SocketState.error(String message) = _Error;
}