
import 'apple_intelligence_flutter_platform_interface.dart';

class AppleIntelligenceFlutter {
  Future<String?> getPlatformVersion() {
    return AppleIntelligenceFlutterPlatform.instance.getPlatformVersion();
  }
}
