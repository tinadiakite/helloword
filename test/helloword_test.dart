import 'package:flutter_test/flutter_test.dart';
import 'package:helloword/helloword.dart';
import 'package:helloword/helloword_platform_interface.dart';
import 'package:helloword/helloword_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHellowordPlatform
    with MockPlatformInterfaceMixin
    implements HellowordPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HellowordPlatform initialPlatform = HellowordPlatform.instance;

  test('$MethodChannelHelloword is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHelloword>());
  });

  test('getPlatformVersion', () async {
    Helloword hellowordPlugin = Helloword();
    MockHellowordPlatform fakePlatform = MockHellowordPlatform();
    HellowordPlatform.instance = fakePlatform;

    expect(await hellowordPlugin.getPlatformVersion(), '42');
  });
}
