import 'dart:io';

import 'package:brand_printer/brand_printer.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:geopos_services_data/geopos_services_data.dart';
import 'package:injectable/injectable.dart';
import 'package:self_checkout_data/self_checkout_data.dart';

@module
abstract class AppDataSourcesModule {
  //============================
  // About
  //============================
  @lazySingleton
  AboutRemoteDataSource aboutRemoteDataSource(
    GeoposServicesApi api,
  ) =>
      AboutRemoteDataSource(api: api);

  @lazySingleton
  AboutLocalDataSource aboutLocalDataSource(
    DeviceInfoPlugin deviceInfoPlugin,
  ) =>
      AboutLocalDataSource(
        deviceInfoPlugin: deviceInfoPlugin,
      );

  //============================
  // Article
  //============================
  @lazySingleton
  ArticleRemoteDataSource articleRemoteDataSource(
    GeoposServicesApi api,
  ) =>
      ArticleRemoteDataSource(api: api);

  //============================
  // Auth
  //============================
  @lazySingleton
  AuthRemoteDataSource authRemoteDataSource(
    GeoposServicesApi api,
  ) =>
      AuthRemoteDataSource(api: api);

  @lazySingleton
  AuthLocalDataSource authLocalDataSource(
    FlutterSecureStorage storage,
  ) =>
      AuthLocalDataSource(storage: storage);

  //============================
  // Client
  //============================
  @lazySingleton
  ClientRemoteDataSource clientRemoteDataSource(
    GeoposServicesApi api,
  ) =>
      ClientRemoteDataSource(api: api);

  //============================
  // Conf
  //============================
  @lazySingleton
  ConfigurationRemoteDataSource configurationRemoteDataSource(
    GeoposServicesApi api,
  ) =>
      ConfigurationRemoteDataSource(api: api);

  @lazySingleton
  ConfigurationLocalDataSource configurationLocalDataSource(
    FlutterSecureStorage storage,
  ) =>
      ConfigurationLocalDataSource(storage: storage);

  //============================
  // Lights
  //============================
  @LazySingleton(dispose: disposeLightsDataSource)
  LightsDataSource lightsDataSource() {
    if (Platform.isWindows) {
      return LightsJposDataSource();
    }

    return LightsStubDataSource();
  }

  //============================
  // Order
  //============================
  @lazySingleton
  OrderRemoteDataSource orderRemoteDataSource(
    GeoposServicesApi api,
  ) =>
      OrderRemoteDataSource(api: api);

  @lazySingleton
  OrderLocalDataSource orderLocalDataSource(
    FlutterSecureStorage storage,
  ) =>
      OrderLocalDataSource(storage: storage);

  //============================
  // Payment
  //============================
  @lazySingleton
  PaymentRemoteDataSource paymentRemoteDataSource(
    GeoposServicesApi api,
  ) =>
      PaymentRemoteDataSource(api: api);

  @lazySingleton
  PaymentLocalDataSource paymentLocalDataSource(
    FlutterSecureStorage storage,
  ) =>
      PaymentLocalDataSource(storage: storage);

  @lazySingleton
  PaymentExternalDataSource paymentExternalDataSource() =>
      PaymentExternalDataphoneDataSource();

  //============================
  // Permission
  //============================
  @lazySingleton
  PermissionDataSource permissionDataSource() {
    if (Platform.isWindows) {
      return PermissionStubDataSource();
    }

    return PermissionAppDataSource();
  }

  //============================
  // Preferences
  //============================
  @lazySingleton
  PreferencesDataSource preferencesLocalDataSource(
    FlutterSecureStorage storage,
  ) =>
      PreferencesDataSource(storage: storage);

  //============================
  // Printer
  //============================
  @lazySingleton
  PrinterRemoteDataSource printerRemoteDataSource(GeoposServicesApi api) =>
      PrinterRemoteDataSource(api: api);

  @LazySingleton(dispose: disposePrinterLocalDataSource)
  PrinterLocalDataSource printerLocalDataSource() {
    if (Platform.isWindows) {
      return PrinterJposDataSource();
    }

    if (Platform.isAndroid) {
      return PrinterAndroidDataSource(
        brandPrinter: const BrandPrinter(),
      );
    }

    return PrinterStubDataSource();
  }

  //============================
  // Scanner
  //============================
  @lazySingleton
  ScannerDataSource scannerDataSource() => ScannerKeyboardDataSource();

  //============================
  // Agreement
  //============================
  @lazySingleton
  AgreementRemoteDataSource agreementRemoteDataSource(
    GeoposServicesApi api,
  ) =>
      AgreementRemoteDataSource(api: api);

  //============================
  // Coupon
  //============================
  @lazySingleton
  CouponRemoteDataSource couponRemoteDataSource(
    GeoposServicesApi api,
  ) =>
      CouponRemoteDataSource(api: api);
}

Future<void> disposeLightsDataSource(LightsDataSource instance) =>
    instance.dispose();

Future<void> disposePrinterLocalDataSource(
  PrinterLocalDataSource instance,
) =>
    instance.dispose();
