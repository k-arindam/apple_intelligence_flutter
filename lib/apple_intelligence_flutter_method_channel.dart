import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'apple_intelligence_flutter_platform_interface.dart';

/// An implementation of [AppleIntelligenceFlutterPlatform] that uses method channels.
class MethodChannelAppleIntelligenceFlutter extends AppleIntelligenceFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('apple_intelligence_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
