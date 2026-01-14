// lib/features/chats/logic/socket/socket.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/services/socket_service.dart';
import 'socket_state.dart';

class SocketCubit extends Cubit<SocketState> {
  final SocketService _socketService;

  SocketCubit(this._socketService) : super(const SocketState.initial());

  Future<void> connect() async {
    emit(const SocketState.connecting());
    try {
      await _socketService.connect();
      _listenToConnection();
      emit(const SocketState.connected());
    } catch (e) {
      emit(SocketState.error(e.toString()));
    }
  }

  void _listenToConnection() {
    _socketService.connectionStream.listen((isConnected) {
      if (isConnected) {
        emit(const SocketState.connected());
      } else {
        emit(const SocketState.disconnected());
      }
    });

    _socketService.authInvalidStream.listen((data) {
      emit(SocketState.authInvalid(data['message'] ?? 'Session expired'));
    });

    _socketService.tokenExpiringStream.listen((data) {
      emit(SocketState.tokenExpiring(data['expiresAt']));
    });
  }

  void disconnect() {
    _socketService.disconnect();
    emit(const SocketState.disconnected());
  }

  @override
  Future<void> close() {
    disconnect();
    return super.close();
  }
}