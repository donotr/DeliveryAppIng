import 'package:deliveryapp/src/environment/environment.dart';
import 'package:deliveryapp/src/models/response_api.dart';
import 'package:deliveryapp/src/models/user.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';

class UsersProvider extends GetConnect {

  String url = Environment.API_URL + 'api/users';
  
  
  Future<Response> create(User user) async {
    Response response = await post(
      '${Environment.API_URL}/api/users/create',
        //'$url/create',
        user.toJson(),
        headers: {
          'Content-Type': 'application/json'
        }
    ); // ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA

    return response;
  }

  Future<ResponseApi> login(String email, String password) async{
    Response response = await post(
      '$url/login',
      {
        'email': email,
        'password': password,
      },
      headers: {
        'Content-Type': 'applicaction/json'
      }
    );//ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA

    if(response.body == null){
      Get.snackbar('Error', 'No se pudo ejecutar la peticion');
      return ResponseApi();
    }

    ResponseApi responseApi = ResponseApi.fromJson(response.body);
    return responseApi;
  }
}

