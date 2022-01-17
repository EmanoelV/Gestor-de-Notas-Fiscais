import '../../model/model.dart' show ResponseHttp;

abstract class IClientHttp {
  Future<ResponseHttp> get(String url, {Map<String, String> headers});
  Future<ResponseHttp> post(String url,
      {Map<String, String> headers, Map<String, dynamic> body});
  Future<ResponseHttp> put(String url,
      {Map<String, String> headers, Map<String, dynamic> body});
  Future<ResponseHttp> delete(String url,
      {Map<String, String> headers, Map<String, dynamic> body});
}
