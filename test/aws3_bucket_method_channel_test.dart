import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aws3_bucket/aws3_bucket_method_channel.dart';

void main() {
  MethodChannelAws3Bucket platform = MethodChannelAws3Bucket();
  const MethodChannel channel = MethodChannel('aws3_bucket');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
