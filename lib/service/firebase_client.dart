import 'package:gestor_de_notas_fiscais/core/core.dart';
import 'package:gestor_de_notas_fiscais/model/response_client.dart';

class FirebaseClient implements IClient {
  @override
  Future<ResponseClient> delete(String url,
      {Map<String, String>? headers, required Map<String, dynamic> body}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseClient> get(String url, {Map<String, String>? headers}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<ResponseClient> post(String url,
      {Map<String, String>? headers, required Map<String, dynamic> body}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<ResponseClient> put(String url,
      {Map<String, String>? headers, required Map<String, dynamic> body}) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
