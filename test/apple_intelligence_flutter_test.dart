import 'package:flutter_test/flutter_test.dart';
import 'package:apple_intelligence_flutter/apple_intelligence_flutter.dart';
import 'package:apple_intelligence_flutter/apple_intelligence_flutter_platform_interface.dart';
import 'package:apple_intelligence_flutter/apple_intelligence_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAppleIntelligenceFlutterPlatform
    with MockPlatformInterfaceMixin
    implements AppleIntelligenceFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AppleIntelligenceFlutterPlatform initialPlatform = AppleIntelligenceFlutterPlatform.instance;

  test('$MethodChannelAppleIntelligenceFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAppleIntelligenceFlutter>());
  });

  test('getPlatformVersion', () async {
    AppleIntelligenceFlutter appleIntelligenceFlutterPlugin = AppleIntelligenceFlutter();
    MockAppleIntelligenceFlutterPlatform fakePlatform = MockAppleIntelligenceFlutterPlatform();
    AppleIntelligenceFlutterPlatform.instance = fakePlatform;

    expect(await appleIntelligenceFlutterPlugin.getPlatformVersion(), '42');
  });
}
