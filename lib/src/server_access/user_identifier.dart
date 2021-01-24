import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';

class UserIdentifier {
  static final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();
  static String _deviceID = 'no-id';
  Future<bool> _initialized;
  static final UserIdentifier _singleton = UserIdentifier._internal();

  factory UserIdentifier() {
    return _singleton;
  }

  UserIdentifier._internal() : _initialized = _initPlatformState();

  static String _readAndroidId(AndroidDeviceInfo build) {
    return build.androidId;
  }

  static String _readIosId(IosDeviceInfo data) {
    return data.identifierForVendor;
  }

  static Future<bool> _initPlatformState() async {
    var foundedId = '';
    try {
      if (Platform.isAndroid) {
        foundedId = _readAndroidId(await _deviceInfoPlugin.androidInfo);
      } else if (Platform.isIOS) {
        foundedId = _readIosId(await _deviceInfoPlugin.iosInfo);
      }
    } on PlatformException {
      foundedId = md5
          .convert(
            utf8.encode(DateTime.now().toIso8601String()),
          )
          .toString();
    }
    _deviceID = foundedId;
    return true;
  }

  String _authHeader(String profileName) {
    return _deviceID;
  }

  Future<bool> get initialized => _initialized;
}
