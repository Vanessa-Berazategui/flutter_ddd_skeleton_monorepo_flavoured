import 'package:geopos_services_data/geopos_services_data.dart';
import 'package:geopos_services_domain/geopos_services_domain.dart';
import 'package:injectable/injectable.dart';
import 'package:self_checkout_data/self_checkout_data.dart';

@module
abstract class AppRepositoriesModule {
  //============================
  // About
  //============================
  @lazySingleton
  AboutRepository aboutRepository(
    AboutLocalDataSource localDataSource,
    AboutRemoteDataSource remoteDataSource,
  ) =>
      AboutRepositoryData(
        localDataSource: localDataSource,
        remoteDataSource: remoteDataSource,
      );

  //============================
  // Article
  //============================
  @lazySingleton
  ArticleRepository articleRepository(
    ArticleRemoteDataSource remoteDataSource,
  ) =>
      ArticleRepositoryData(
        remoteDataSource: remoteDataSource,
      );

  //============================
  // Auth
  //============================
  @lazySingleton
  AuthenticationRepository authenticationRepository(
    AuthLocalDataSource localDataSource,
    AuthRemoteDataSource remoteDataSource,
  ) =>
      AuthenticationRepositoryData(
        localDataSource: localDataSource,
        remoteDataSource: remoteDataSource,
      );

  //============================
  // Client
  //============================
  @lazySingleton
  ClientRepository clientRepository(
    ClientRemoteDataSource remoteDataSource,
  ) =>
      ClientRepositoryData(
        remoteDataSource: remoteDataSource,
      );

  //============================
  // Conf
  //============================
  @lazySingleton
  ConfigurationRepository configurationRepository(
    ConfigurationLocalDataSource localDataSource,
    ConfigurationRemoteDataSource remoteDataSource,
  ) =>
      ConfigurationRepositoryData(
        localDataSource: localDataSource,
        remoteDataSource: remoteDataSource,
      );

  //============================
  // Lights
  //============================
  @lazySingleton
  LightsRepository lightsRepository(
    LightsDataSource dataSource,
  ) =>
      LightsRepositoryData(
        dataSource: dataSource,
      );

  //============================
  // Order
  //============================
  @lazySingleton
  OrderRepository orderRepository(
    OrderLocalDataSource localDataSource,
    OrderRemoteDataSource remoteDataSource,
  ) =>
      OrderRepositoryData(
        localDataSource: localDataSource,
        remoteDataSource: remoteDataSource,
      );

  //============================
  // Payment
  //============================
  @lazySingleton
  PaymentRepository paymentRepository(
    PaymentLocalDataSource localDataSource,
    PaymentRemoteDataSource remoteDataSource,
    PaymentExternalDataSource externalDataSource,
  ) =>
      PaymentRepositoryData(
        localDataSource: localDataSource,
        remoteDataSource: remoteDataSource,
        externalDataSource: externalDataSource,
      );

  //============================
  // Permission
  //============================
  @lazySingleton
  PermissionRepository permissionRepository(
    PermissionDataSource permissionDataSource,
  ) =>
      PermissionRepositoryData(
        permissionDataSource: permissionDataSource,
      );

  //============================
  // Preferences
  //============================
  @lazySingleton
  PreferencesRepository preferencesRepository(
    PreferencesDataSource preferencesDataSource,
  ) =>
      PreferencesRepositoryData(
        preferencesDataSource: preferencesDataSource,
      );

  //============================
  // Printer
  //============================
  @lazySingleton
  PrinterRepository printerRepository(
    PrinterLocalDataSource localDataSource,
    PrinterRemoteDataSource remoteDataSource,
  ) =>
      PrinterRepositoryData(
        localDataSource: localDataSource,
        remoteDataSource: remoteDataSource,
      );

  //============================
  // Scanner
  //============================
  @lazySingleton
  ScannerRepository scannerRepository(
    ScannerDataSource scannerDataSource,
  ) =>
      ScannerRepositoryData(
        scannerDataSource: scannerDataSource,
      );

  //============================
  // Agreement
  //============================
  @lazySingleton
  AgreementRepository agreementRepository() => AgreementMockRepository();

  //============================
  // Coupon
  //============================
  @lazySingleton
  CouponRepository couponRepository() => CouponMockRepository();
}
