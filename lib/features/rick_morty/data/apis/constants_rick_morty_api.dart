class EndpointsRAM {
  // Base url
  static const String baseUrl = "https://rickandmortyapi.com/api/";

  // Characters endpoint
  static const String character = "${baseUrl}character/";

  // receiveTimeout
  static const Duration receiveTimeout = Duration(milliseconds: 1500);

  // connectTimeout
  static const Duration connectionTimeout = Duration(milliseconds: 3000);
}
