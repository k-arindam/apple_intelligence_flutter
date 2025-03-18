import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'apple_intelligence_flutter_method_channel.dart';

abstract class AppleIntelligenceFlutterPlatform extends PlatformInterface {
  /// Constructs a AppleIntelligenceFlutterPlatform.
  AppleIntelligenceFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static AppleIntelligenceFlutterPlatform _instance = MethodChannelAppleIntelligenceFlutter();

  /// The default instance of [AppleIntelligenceFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelAppleIntelligenceFlutter].
  static AppleIntelligenceFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AppleIntelligenceFlutterPlatform] when
  /// they register themselves.
  static set instance(AppleIntelligenceFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
