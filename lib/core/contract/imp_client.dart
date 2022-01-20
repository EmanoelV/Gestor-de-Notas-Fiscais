import 'package:gestor_de_notas_fiscais/model/model.dart' show ResponseClient;

abstract class IClient {
  Future<ResponseClient> get(String url,
      {required Map<String, String> headers});
  Future<ResponseClient> post(String url,
      {Map<String, String>? headers, required Map<String, dynamic> body});
  Future<ResponseClient> put(String url,
      {Map<String, String>? headers, required Map<String, dynamic> body});
  Future<ResponseClient> delete(String url,
      {Map<String, String>? headers, required Map<String, dynamic> body});
}
