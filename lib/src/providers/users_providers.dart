import 'package:deliveryapp/src/environment/environment.dart';
import 'package:deliveryapp/src/models/user.dart';
import 'package:get/get_connect/connect.dart';

class UsersProvider extends GetConnect {

  String url = Environment.API_URL + 'api/users';
  
  
  Future<Response> create(User user) async {
    Response response = await post(
        '$url/create',
        user.toJson(),
        headers: {
          'Content-Type': 'application/json'
        }
    ); // ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA

    return response;
  }
}