// import 'dart:developer';
// import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

// class ReverbService {
//   ReverbService._();
//   static final instance = ReverbService._();

//   final PusherChannelsFlutter _pusher = PusherChannelsFlutter.getInstance();

//   Channel? _channel;

//   Future<void> init({
//     required String apiKey,
//     required String cluster,
//     required String host,
//     required int port,
//     bool useTLS = false,
//   }) async {
//     try {
//       await _pusher.init(
//         apiKey: apiKey,
//         cluster: cluster,
//         onConnectionStateChange: (currentState, previousState) {
//           log("Connection: $currentState");
//         },
//         onError: (message, code, e) {
//           log("Error: $message");
//         },
//         onSubscriptionSucceeded: (channelName, data) {
//           log("Subscribed: $channelName");
//         },
//         onEvent: (event) {
//           log("Event: ${event.eventName} → ${event.data}");
//         },
//         useTLS: useTLS,
//         wsHost: host,
//         wsPort: port,
//       );

//       await _pusher.connect();
//     } catch (e) {
//       log("Init error: $e");
//     }
//   }

//   Future<void> subscribe(String channelName) async {
//     try {
//       _channel = await _pusher.subscribe(channelName: channelName);
//     } catch (e) {
//       log("Subscribe error: $e");
//     }
//   }

//   void onMessage({
//     required String eventName,
//     required Function(dynamic data) callback,
//   }) {
//     _pusher.bind(
//       channelName: _channel!.name,
//       eventName: eventName,
//       callback: (event) {
//         callback(event.data);
//       },
//     );
//   }

//   Future<void> unsubscribe(String channelName) async {
//     await _pusher.unsubscribe(channelName: channelName);
//   }

//   Future<void> disconnect() async {
//     await _pusher.disconnect();
//   }
// }
