
import 'helloword_platform_interface.dart';

class Helloword {
  Future getPlatformVersion() {
    return HellowordPlatform.instance.getPlatformVersion();
  }
}
