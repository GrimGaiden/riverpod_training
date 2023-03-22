class Endpoints {
  // base url
  static const String jokes =
      "https://v2.jokeapi.dev/joke/Programming?type=twopart";

  // receiveTimeout
  static const Duration receiveTimeout = Duration(milliseconds: 1500);

  // connectTimeout
  static const Duration connectionTimeout = Duration(milliseconds: 3000);
}
