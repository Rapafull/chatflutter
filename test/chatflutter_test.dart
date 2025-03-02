import 'package:flutter_test/flutter_test.dart';
import 'package:chatflutter/chatflutter.dart';
import 'package:chatflutter/chatflutter_platform_interface.dart';
import 'package:chatflutter/chatflutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockChatflutterPlatform
    with MockPlatformInterfaceMixin
    implements ChatflutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ChatflutterPlatform initialPlatform = ChatflutterPlatform.instance;

  test('$MethodChannelChatflutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelChatflutter>());
  });

  test('getPlatformVersion', () async {
    Chatflutter chatflutterPlugin = Chatflutter();
    MockChatflutterPlatform fakePlatform = MockChatflutterPlatform();
    ChatflutterPlatform.instance = fakePlatform;

    expect(await chatflutterPlugin.getPlatformVersion(), '42');
  });
}
