// Package imports:
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppPackagesModule {
  //============================
  // Packages dependencies
  //============================
  @lazySingleton
  FlutterSecureStorage flutterSecureStorage() => const FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
        ),
      );

  @lazySingleton
  DeviceInfoPlugin deviceInfoPlugin() => DeviceInfoPlugin();
}
