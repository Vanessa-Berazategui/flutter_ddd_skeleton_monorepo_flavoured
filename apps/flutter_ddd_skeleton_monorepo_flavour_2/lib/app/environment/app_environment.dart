abstract class AppEnvironment {
  AppEnvironment({
    required this.baseUrl,
    required this.connectTimeout,
    required this.sendTimeout,
    required this.receiveTimeout,
    required this.env,
  });

  final String baseUrl;
  final int connectTimeout;
  final int sendTimeout;
  final int receiveTimeout;
  final String env;

  static const dev = 'dev';
  static const stg = 'stg';
  static const prod = 'prod';
}
