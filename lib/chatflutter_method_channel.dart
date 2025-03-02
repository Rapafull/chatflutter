import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'chatflutter_platform_interface.dart';

/// An implementation of [ChatflutterPlatform] that uses method channels.
class MethodChannelChatflutter extends ChatflutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('chatflutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
