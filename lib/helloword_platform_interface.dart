import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'helloword_method_channel.dart';

abstract class HellowordPlatform extends PlatformInterface {
  /// Constructs a HellowordPlatform.
  HellowordPlatform() : super(token: _token);

  static final Object _token = Object();

  static HellowordPlatform _instance = MethodChannelHelloword();

  /// The default instance of [HellowordPlatform] to use.
  ///
  /// Defaults to [MethodChannelHelloword].
  static HellowordPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HellowordPlatform] when
  /// they register themselves.
  static set instance(HellowordPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
