
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class FlutterIdnow {
  static const MethodChannel _channel =
      const MethodChannel('flutter_idnow');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<Null> startIdentification(String transactionId) async {
    try {
      Map<String, dynamic> arguments = <String, dynamic> {};
      arguments.putIfAbsent("transactionId", () => transactionId);
      final String version = await _channel.invokeMethod('startIdentification', arguments);
      return version;
    } catch(e) {
      print(e);
    }
  }
}
