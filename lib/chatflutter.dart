
import 'chatflutter_platform_interface.dart';

class Chatflutter {
  Future<String?> getPlatformVersion() {
    return ChatflutterPlatform.instance.getPlatformVersion();
  }
}
