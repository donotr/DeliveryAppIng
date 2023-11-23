
import 'package:deliveryapp/src/pages/login/login_page.dart';
import 'package:deliveryapp/src/pages/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}): super (key:key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState(){
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      title: 'Delivery App',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () =>  LoginPage()),
        GetPage(name: '/register', page: () =>  RegisterPage())
      ],
      theme: ThemeData(
        primaryColor: Colors.amber,
        colorScheme: ColorScheme(
          brightness:Brightness.light, 
          primary: Colors.amber,      
          secondary:Colors.amberAccent,
          onPrimary: Colors.grey,            
          error:Colors.grey, 
          onError: Colors.grey, 
          onBackground:Colors.grey, 
          onSecondary: Colors.grey, 
          background: Colors.grey, 
          surface: Colors.grey, 
          onSurface: Colors.grey 
          )
      ),
      navigatorKey: Get.key,
    );
    

  }
}




