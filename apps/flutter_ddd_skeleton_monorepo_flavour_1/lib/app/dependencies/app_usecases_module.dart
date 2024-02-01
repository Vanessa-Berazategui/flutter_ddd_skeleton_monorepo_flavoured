import 'package:geopos_services_domain/geopos_services_domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppUseCasesModule {
  //============================
  // About
  //============================
  @lazySingleton
  GetBackendVersionsUseCase getBackendVersionsUseCase(
    AboutRepository repository,
  ) =>
      GetBackendVersionsUseCase(repository: repository);

  @lazySingleton
  GetDeviceIdUseCase getDeviceIdUseCase(
    AboutRepository repository,
  ) =>
      GetDeviceIdUseCase(repository: repository);

  @lazySingleton
  GetPackageVersionUseCase getPackageVersionUseCase(
    AboutRepository repository,
  ) =>
      GetPackageVersionUseCase(repository: repository);

  //============================
  // Article
  //============================
  @lazySingleton
  GetArticlesUseCase getArticlesUseCase(
    ArticleRepository repository,
  ) =>
      GetArticlesUseCase(repository: repository);

  //============================
  // Auth
  //============================
  @lazySingleton
  CacheAuthenticationAppDataUseCase cacheAuthenticationAppDataUseCase(
    AuthenticationRepository repository,
  ) =>
      CacheAuthenticationAppDataUseCase(repository: repository);

  @lazySingleton
  CacheSessionTokenUseCase cacheSessionTokenUseCase(
    AuthenticationRepository repository,
  ) =>
      CacheSessionTokenUseCase(repository: repository);

  @lazySingleton
  ChangePasswordUseCase changePasswordUseCase(
    AuthenticationRepository repository,
  ) =>
      ChangePasswordUseCase(repository: repository);

  @lazySingleton
  ClearCacheAuthenticationAppDataUseCase clearCacheAuthenticationAppDataUseCase(
    AuthenticationRepository repository,
  ) =>
      ClearCacheAuthenticationAppDataUseCase(repository: repository);

  @lazySingleton
  ClearCacheSessionTokenUseCase clearCacheSessionTokenUseCase(
    AuthenticationRepository repository,
  ) =>
      ClearCacheSessionTokenUseCase(repository: repository);

  @lazySingleton
  GetCachedAuthenticationAppDataUseCase getCachedAuthenticationAppDataUseCase(
    AuthenticationRepository repository,
  ) =>
      GetCachedAuthenticationAppDataUseCase(repository: repository);

  @lazySingleton
  GetCachedSessionTokenUseCase getCachedSessionTokenUseCase(
    AuthenticationRepository repository,
  ) =>
      GetCachedSessionTokenUseCase(repository: repository);

  @lazySingleton
  LoginUseCase loginUseCase(
    AuthenticationRepository repository,
  ) =>
      LoginUseCase(repository: repository);

  //============================
  // Client
  //============================
  @lazySingleton
  AddClientUseCase addClientUseCase(
    ClientRepository repository,
  ) =>
      AddClientUseCase(repository: repository);

  @lazySingleton
  GetDocumentTypesUseCase getDocuementTypesUseCase(
    ClientRepository repository,
  ) =>
      GetDocumentTypesUseCase(repository: repository);

  //============================
  // Config
  //============================
  @lazySingleton
  CacheBaseUrlUseCase cacheBaseUrlUseCase(
    ConfigurationRepository repository,
  ) =>
      CacheBaseUrlUseCase(repository: repository);

  @lazySingleton
  CacheConfigurationAppDataUseCase cacheConfigurationAppDataUseCase(
    ConfigurationRepository repository,
  ) =>
      CacheConfigurationAppDataUseCase(repository: repository);

  @lazySingleton
  CacheConfigurationTokenUseCase cacheConfigurationTokenUseCase(
    ConfigurationRepository repository,
  ) =>
      CacheConfigurationTokenUseCase(repository: repository);

  @lazySingleton
  ClearCacheBaseUrlUseCase clearCacheBaseUrlUseCase(
    ConfigurationRepository repository,
  ) =>
      ClearCacheBaseUrlUseCase(repository: repository);

  @lazySingleton
  ClearCacheConfigurationAppDataUseCase clearCacheConfigurationAppDataUseCase(
    ConfigurationRepository repository,
  ) =>
      ClearCacheConfigurationAppDataUseCase(repository: repository);

  @lazySingleton
  ClearCacheConfigurationTokenUseCase clearCacheConfigurationTokenUseCase(
    ConfigurationRepository repository,
  ) =>
      ClearCacheConfigurationTokenUseCase(repository: repository);

  @lazySingleton
  ConfigureUseCase configureUseCase(
    ConfigurationRepository repository,
  ) =>
      ConfigureUseCase(repository: repository);

  @lazySingleton
  GetCachedBaseUrlUseCase getCachedBaseUrlUseCase(
    ConfigurationRepository repository,
  ) =>
      GetCachedBaseUrlUseCase(repository: repository);

  @lazySingleton
  GetCachedConfigurationAppDataUseCase getCachedConfigurationAppDataUseCase(
    ConfigurationRepository repository,
  ) =>
      GetCachedConfigurationAppDataUseCase(repository: repository);

  @lazySingleton
  GetCachedConfigurationTokenUseCase getCachedConfigurationTokenUseCase(
    ConfigurationRepository repository,
  ) =>
      GetCachedConfigurationTokenUseCase(repository: repository);

  //============================
  // Lights
  //============================
  @lazySingleton
  SwitchOffUseCase switchOffUseCase(
    LightsRepository repository,
  ) =>
      SwitchOffUseCase(repository: repository);

  @lazySingleton
  SwitchOnUseCase switchOnUseCase(
    LightsRepository repository,
  ) =>
      SwitchOnUseCase(repository: repository);

  //============================
  // Order
  //============================
  @lazySingleton
  AddLineUseCase addLineUseCase(
    OrderRepository repository,
  ) =>
      AddLineUseCase(repository: repository);

  @lazySingleton
  CacheChannelUseCase cacheChannelUseCase(
    OrderRepository repository,
  ) =>
      CacheChannelUseCase(repository: repository);

  @lazySingleton
  CacheChannelDataUseCase cacheChannelDataUseCase(
    OrderRepository repository,
  ) =>
      CacheChannelDataUseCase(repository: repository);

  @lazySingleton
  CacheOrderDataUseCase cacheOrderDataUseCase(
    OrderRepository repository,
  ) =>
      CacheOrderDataUseCase(repository: repository);

  @lazySingleton
  CacheOrderStepUseCase cacheOrderStepUseCase(
    OrderRepository repository,
  ) =>
      CacheOrderStepUseCase(repository: repository);

  @lazySingleton
  CancelOrderUseCase cancelOrderUseCase(
    OrderRepository repository,
  ) =>
      CancelOrderUseCase(repository: repository);

  @lazySingleton
  ClearCacheOrderDataUseCase clearCacheOrderDataUseCase(
    OrderRepository repository,
  ) =>
      ClearCacheOrderDataUseCase(repository: repository);

  @lazySingleton
  CloseOrderUseCase closeOrderUseCase(
    OrderRepository repository,
  ) =>
      CloseOrderUseCase(repository: repository);

  @lazySingleton
  CreateOrderUseCase createOrderUseCase(
    OrderRepository repository,
  ) =>
      CreateOrderUseCase(repository: repository);

  @lazySingleton
  DeleteLineUseCase deleteLineUseCase(
    OrderRepository repository,
  ) =>
      DeleteLineUseCase(repository: repository);

  @lazySingleton
  DiscardOrderUseCase discardOrderUseCase(
    OrderRepository repository,
  ) =>
      DiscardOrderUseCase(repository: repository);

  @lazySingleton
  GetCachedOrderDataUseCase getCachedOrderDataUseCase(
    OrderRepository repository,
  ) =>
      GetCachedOrderDataUseCase(repository: repository);

  @lazySingleton
  GetOrderUseCase getOrderUseCase(
    OrderRepository repository,
  ) =>
      GetOrderUseCase(repository: repository);

  @lazySingleton
  UpdateLineUseCase updateLineUseCase(
    OrderRepository repository,
  ) =>
      UpdateLineUseCase(repository: repository);

  //============================
  // Payment
  //============================
  @lazySingleton
  CacheCurrentPaymentDataUseCase cacheCurrentPaymentDataUseCase(
    PaymentRepository repository,
  ) =>
      CacheCurrentPaymentDataUseCase(repository: repository);

  @lazySingleton
  ClearCacheCurrentPaymentDataUseCase clearCacheCurrentPaymentDataUseCase(
    PaymentRepository repository,
  ) =>
      ClearCacheCurrentPaymentDataUseCase(repository: repository);

  @lazySingleton
  EvaluatePaymentModeUseCase evaluatePaymentModeUseCase(
    PaymentRepository repository,
  ) =>
      EvaluatePaymentModeUseCase(repository: repository);

  @lazySingleton
  GetCachedCurrentPaymentDataUseCase getCachedCurrentPaymentDataUseCase(
    PaymentRepository repository,
  ) =>
      GetCachedCurrentPaymentDataUseCase(repository: repository);

  @lazySingleton
  GetPaymentModesUseCase getPaymentModesUseCase(
    PaymentRepository repository,
  ) =>
      GetPaymentModesUseCase(repository: repository);

  @lazySingleton
  RegisterPaymentUseCase registerPaymentUseCase(
    PaymentRepository repository,
  ) =>
      RegisterPaymentUseCase(repository: repository);

  @lazySingleton
  UnregisterPaymentUseCase unregisterPaymentUseCase(
    PaymentRepository repository,
  ) =>
      UnregisterPaymentUseCase(repository: repository);

  @lazySingleton
  PayPaymentUseCase payPaymentUseCase(
    PaymentRepository repository,
  ) =>
      PayPaymentUseCase(repository: repository);

  @lazySingleton
  VoidPaymentUseCase voidPaymentUseCase(
    PaymentRepository repository,
  ) =>
      VoidPaymentUseCase(repository: repository);

  //============================
  // Permission
  //============================
  @lazySingleton
  RequestAllPermissionsUseCase requestAllPermissionsUseCase(
    PermissionRepository repository,
  ) =>
      RequestAllPermissionsUseCase(repository: repository);

  //============================
  // Preferences
  //============================
  @lazySingleton
  CacheKeepScanningUseCase cacheKeepScanningUseCase(
    PreferencesRepository repository,
  ) =>
      CacheKeepScanningUseCase(repository: repository);

  @lazySingleton
  CachePreferencesAppDataUseCase cachePreferencesAppDataUseCase(
    PreferencesRepository repository,
  ) =>
      CachePreferencesAppDataUseCase(repository: repository);

  @lazySingleton
  GetCachedKeepScanningUseCase getCachedKeepScanningUseCase(
    PreferencesRepository repository,
  ) =>
      GetCachedKeepScanningUseCase(repository: repository);

  @lazySingleton
  GetCachedPreferencesAppDataUseCase getCachedPreferencesAppDataUseCase(
    PreferencesRepository repository,
  ) =>
      GetCachedPreferencesAppDataUseCase(repository: repository);

  //============================
  // Printer
  //============================
  @lazySingleton
  GetPrintingChannelsUseCase getPrintingChannelsUseCase(
    PrinterRepository repository,
  ) =>
      GetPrintingChannelsUseCase(repository: repository);

  @lazySingleton
  PrintPdfUseCase printPdfUseCase(
    PrinterRepository repository,
  ) =>
      PrintPdfUseCase(repository: repository);

  @lazySingleton
  PrintImageUseCase printImageUseCase(
    PrinterRepository repository,
  ) =>
      PrintImageUseCase(repository: repository);

  @lazySingleton
  GetPrintingCommandsUseCase getPrintingCommandsUseCase(
    PrinterRepository repository,
  ) =>
      GetPrintingCommandsUseCase(repository: repository);

  @lazySingleton
  PrintByCommandsUseCase printByCommandsUseCase(
    PrinterRepository repository,
  ) =>
      PrintByCommandsUseCase(repository: repository);

  //============================
  // Scanner
  //============================
  @lazySingleton
  DisposeScannerUseCase disposeScannerUseCase(
    ScannerRepository repository,
  ) =>
      DisposeScannerUseCase(repository: repository);

  @lazySingleton
  InitializeScannerUseCase initializeScannerUseCase(
    ScannerRepository repository,
  ) =>
      InitializeScannerUseCase(repository: repository);

  @lazySingleton
  ListenScannerUseCase listenScannerUseCase(
    ScannerRepository repository,
  ) =>
      ListenScannerUseCase(repository: repository);

  //============================
  // Agreement
  //============================
  @lazySingleton
  GetAgreementsUseCase getAgreementsUseCase(
    AgreementRepository repository,
  ) =>
      GetAgreementsUseCase(repository: repository);

  @lazySingleton
  AddAgreementUseCase addAgreementUseCase(
    AgreementRepository repository,
  ) =>
      AddAgreementUseCase(repository: repository);

  //============================
  // Coupon
  //============================
  @lazySingleton
  AddCouponUseCase addCouponUseCase(
    CouponRepository repository,
  ) =>
      AddCouponUseCase(repository: repository);
}
