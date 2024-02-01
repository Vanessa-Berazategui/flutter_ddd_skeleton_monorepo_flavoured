import 'package:geopos_services_domain/geopos_services_domain.dart';
import 'package:injectable/injectable.dart';
import 'package:self_checkout_cvc/app/app.dart';

@module
abstract class AppBlocsModule {
  /// Global blocs
  @lazySingleton
  SessionBloc sessionBloc(
    CacheOrderDataUseCase cacheOrderDataUseCase,
    ClearCacheOrderDataUseCase clearCacheOrderDataUseCase,
    ClearCacheCurrentPaymentDataUseCase clearCacheCurrentPaymentDataUseCase,
    CancelOrderUseCase cancelOrderUseCase,
    DiscardOrderUseCase discardOrderUseCase,
    GetOrderUseCase getOrderUseCase,
    GetCachedConfigurationAppDataUseCase getCachedConfigurationAppDataUseCase,
    GetCachedAuthenticationAppDataUseCase getCachedAuthenticationAppDataUseCase,
    GetCachedOrderDataUseCase getCachedOrderDataUseCase,
    CacheAuthenticationAppDataUseCase cacheAuthenticationAppDataUseCase,
    ClearCacheAuthenticationAppDataUseCase
        clearCacheAuthenticationAppDataUseCase,
    ClearCacheConfigurationAppDataUseCase clearCacheConfigurationAppDataUseCase,
  ) =>
      SessionBloc(
        getCachedOrderDataUseCase: getCachedOrderDataUseCase,
        getCachedAuthenticationAppDataUseCase:
            getCachedAuthenticationAppDataUseCase,
        getCachedConfigurationAppDataUseCase:
            getCachedConfigurationAppDataUseCase,
        getOrderUseCase: getOrderUseCase,
        cacheOrderDataUseCase: cacheOrderDataUseCase,
        clearCacheOrderDataUseCase: clearCacheOrderDataUseCase,
        clearCacheCurrentPaymentDataUseCase:
            clearCacheCurrentPaymentDataUseCase,
        cancelOrderUseCase: cancelOrderUseCase,
        discardOrderUseCase: discardOrderUseCase,
        cacheAuthenticationAppDataUseCase: cacheAuthenticationAppDataUseCase,
        clearCacheAuthenticationAppDataUseCase:
            clearCacheAuthenticationAppDataUseCase,
        clearCacheConfigurationAppDataUseCase:
            clearCacheConfigurationAppDataUseCase,
      );

  @lazySingleton
  SupervisorBloc supervisorBloc(
    AppEnvironment environment,
    LoginUseCase loginUseCase,
    InitializeScannerUseCase initializeScannerUseCase,
    ListenScannerUseCase listenScannerUseCase,
    DisposeScannerUseCase disposeScannerUseCase,
    GetBackendVersionsUseCase getBackendVersionsUseCase,
    GetPackageVersionUseCase getPackageVersionUseCase,
    SessionBloc sessionBloc,
  ) =>
      SupervisorBloc(
        supervisorPermissionId: environment.supervisorPermissionId,
        loginUseCase: loginUseCase,
        initializeScannerUseCase: initializeScannerUseCase,
        listenScannerUseCase: listenScannerUseCase,
        disposeScannerUseCase: disposeScannerUseCase,
        getBackendVersionsUseCase: getBackendVersionsUseCase,
        getPackageVersionUseCase: getPackageVersionUseCase,
        sessionBloc: sessionBloc,
      );

  @lazySingleton
  LightsBloc lightsBloc(
    SwitchOnUseCase switchOnUseCase,
    SwitchOffUseCase switchOffUseCase,
  ) =>
      LightsBloc(
        switchOnUseCase: switchOnUseCase,
        switchOffUseCase: switchOffUseCase,
      );

  LoginBloc loginBloc(
    SessionBloc sessionBloc,
    GetCachedConfigurationAppDataUseCase getCachedConfigurationAppDataUseCase,
    LoginUseCase loginUseCase,
    InitializeScannerUseCase initializeScannerUseCase,
    ListenScannerUseCase listenScannerUseCase,
    DisposeScannerUseCase disposeScannerUseCase,
    ClearCacheConfigurationAppDataUseCase clearCacheConfigurationAppDataUseCase,
  ) =>
      LoginBloc(
        sessionBloc: sessionBloc,
        getCachedConfigurationAppDataUseCase:
            getCachedConfigurationAppDataUseCase,
        loginUseCase: loginUseCase,
        initializeScannerUseCase: initializeScannerUseCase,
        listenScannerUseCase: listenScannerUseCase,
        disposeScannerUseCase: disposeScannerUseCase,
      );

  /// Page View Blocs
  ConfigBloc configBloc(
    AppEnvironment environment,
    GetDeviceIdUseCase getDeviceIdUseCase,
    CacheBaseUrlUseCase cacheBaseUrlUseCase,
    CacheConfigurationTokenUseCase cacheConfigurationTokenUseCase,
    CacheConfigurationAppDataUseCase cacheConfigurationAppDataUseCase,
  ) =>
      ConfigBloc(
        confDevicePermissionId: environment.confDevicePermissionId,
        reloadDependencies: () async {
          await getIt.reset();
          await setupDependencies(env: environment.env);
        },
        reloadLoginUseCase: getIt.call,
        reloadConfigureUseCase: getIt.call,
        getDeviceIdUseCase: getDeviceIdUseCase,
        cacheBaseUrlUseCase: cacheBaseUrlUseCase,
        cacheConfigurationTokenUseCase: cacheConfigurationTokenUseCase,
        cacheConfigurationAppDataUseCase: cacheConfigurationAppDataUseCase,
      );

  AgreementBloc agreementBloc(
    SessionBloc sessionBloc,
    AddAgreementUseCase addAgreementUseCase,
  ) =>
      AgreementBloc(
        sessionBloc: sessionBloc,
        addAgreementUseCase: addAgreementUseCase,
      );

  ClientBloc clientBloc(
    SessionBloc sessionBloc,
    SupervisorBloc supervisorBloc,
    CreateOrderUseCase createOrderUseCase,
    AddClientUseCase addClientUseCase,
    CacheOrderDataUseCase cacheOrderDataUseCase,
    GetDocumentTypesUseCase getDocumentTypesUseCase,
    GetAgreementsUseCase getAgreementsUseCase,
  ) =>
      ClientBloc(
        sessionBloc: sessionBloc,
        supervisorBloc: supervisorBloc,
        createOrderUseCase: createOrderUseCase,
        addClientUseCase: addClientUseCase,
        cacheOrderDataUseCase: cacheOrderDataUseCase,
        getDocumentTypesUseCase: getDocumentTypesUseCase,
        getAgreementsUseCase: getAgreementsUseCase,
      );

  OrderBloc orderBloc(
    SessionBloc sessionBloc,
    AddLineUseCase addLineUseCase,
    AddCouponUseCase addCouponUseCase,
    UpdateLineUseCase updateLineUseCase,
    DeleteLineUseCase deleteLineUseCase,
    InitializeScannerUseCase initializeScannerUseCase,
    ListenScannerUseCase listenScannerUseCase,
    DisposeScannerUseCase disposeScannerUseCase,
  ) =>
      OrderBloc(
        sessionBloc: sessionBloc,
        addLineUseCase: addLineUseCase,
        addCouponUseCase: addCouponUseCase,
        updateLineUseCase: updateLineUseCase,
        deleteLineUseCase: deleteLineUseCase,
        initializeScannerUseCase: initializeScannerUseCase,
        listenScannerUseCase: listenScannerUseCase,
        disposeScannerUseCase: disposeScannerUseCase,
      );

  PaymentBloc paymentBloc(
    AppEnvironment environment,
    SessionBloc sessionBloc,
    GetPaymentModesUseCase getPaymentModesUseCase,
    GetOrderUseCase getOrderUseCase,
    EvaluatePaymentModeUseCase evaluatePaymentModeUseCase,
    RegisterPaymentUseCase registerPaymentUseCase,
    UnregisterPaymentUseCase unregisterPaymentUseCase,
    PayPaymentUseCase payPaymentUseCase,
    VoidPaymentUseCase voidPaymentUseCase,
    CloseOrderUseCase closeOrderUseCase,
    CacheCurrentPaymentDataUseCase cacheCurrentPaymentDataUseCase,
    GetPrintingCommandsUseCase getPrintingCommandsUseCase,
    PrintByCommandsUseCase printByCommandsUseCase,
    PrintPdfUseCase printPdfUseCase,
    PrintImageUseCase printImageUseCase,
  ) =>
      PaymentBloc(
        usePrintByCommands: environment.usePrintByCommands,
        sessionBloc: sessionBloc,
        getPaymentModesUseCase: getPaymentModesUseCase,
        getOrderUseCase: getOrderUseCase,
        evaluatePaymentModeUseCase: evaluatePaymentModeUseCase,
        registerPaymentUseCase: registerPaymentUseCase,
        unregisterPaymentUseCase: unregisterPaymentUseCase,
        payPaymentUseCase: payPaymentUseCase,
        voidPaymentUseCase: voidPaymentUseCase,
        closeOrderUseCase: closeOrderUseCase,
        cacheCurrentPaymentDataUseCase: cacheCurrentPaymentDataUseCase,
        getPrintingCommandsUseCase: getPrintingCommandsUseCase,
        printByCommandsUseCase: printByCommandsUseCase,
        printPdfUseCase: printPdfUseCase,
        printImageUseCase: printImageUseCase,
      );
}
