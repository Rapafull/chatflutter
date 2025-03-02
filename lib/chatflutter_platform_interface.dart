import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'chatflutter_method_channel.dart';

abstract class ChatflutterPlatform extends PlatformInterface {
  /// Constructs a ChatflutterPlatform.
  ChatflutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static ChatflutterPlatform _instance = MethodChannelChatflutter();

  /// The default instance of [ChatflutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelChatflutter].
  static ChatflutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ChatflutterPlatform] when
  /// they register themselves.
  static set instance(ChatflutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
