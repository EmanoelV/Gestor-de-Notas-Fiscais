class ResponseHttp {
  final int statusCode;
  final Map<String, dynamic> body;
  final Map<String, String> headers;
  bool get isSuccess => statusCode >= 200 && statusCode < 300;

  ResponseHttp(
      {required this.statusCode, required this.body, required this.headers});
}
