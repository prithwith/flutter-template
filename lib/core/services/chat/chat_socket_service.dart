// import 'dart:async';
// import 'package:socket_io_client/socket_io_client.dart' as IO;

// class ChatSocketService {
//   ChatSocketService._();
//   static final instance = ChatSocketService._();

//   late IO.Socket _socket;

//   bool _isConnected = false;

//   void init({required String baseUrl, String? token}) {
//     _socket = IO.io(
//       baseUrl,
//       IO.OptionBuilder()
//           .setTransports(['websocket'])
//           .disableAutoConnect()
//           .setExtraHeaders(
//             token != null ? {'Authorization': 'Bearer $token'} : {},
//           )
//           .build(),
//     );

//     _connect();
//     _listenCoreEvents();
//   }

//   void _connect() {
//     _socket.connect();
//   }

//   void _listenCoreEvents() {
//     _socket.onConnect((_) {
//       _isConnected = true;
//       print('✅ Socket Connected');
//     });

//     _socket.onDisconnect((_) {
//       _isConnected = false;
//       print('❌ Socket Disconnected');
//       _reconnect();
//     });

//     _socket.onConnectError((data) {
//       print('⚠️ Connect Error: $data');
//     });

//     _socket.onError((data) {
//       print('⚠️ Socket Error: $data');
//     });
//   }

//   void _reconnect() {
//     Future.delayed(const Duration(seconds: 3), () {
//       if (!_isConnected) {
//         print('🔄 Reconnecting...');
//         _socket.connect();
//       }
//     });
//   }

//   void onMessage(void Function(dynamic data) callback) {
//     _socket.on('receive_message', (data) {
//       callback(data);
//     });
//   }

//   void sendMessage({required String message, required String userId}) {
//     if (!_isConnected) {
//       print('❌ Cannot send, socket not connected');
//       return;
//     }

//     _socket.emit('send_message', {
//       'message': message,
//       'user_id': userId,
//       'timestamp': DateTime.now().toIso8601String(),
//     });
//   }

//   void joinRoom(String roomId) {
//     _socket.emit('join_room', {'room_id': roomId});
//   }

//   void leaveRoom(String roomId) {
//     _socket.emit('leave_room', {'room_id': roomId});
//   }

//   void dispose() {
//     _socket.dispose();
//   }
// }
