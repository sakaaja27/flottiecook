import 'package:flottiecook/Controllers/Services/auth.dart';
import 'bearertoken.dart';
import 'globals.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class Auth extends GetxController {
  RxBool isLoading = false.obs;

  void login({
    required String email,
    required String password,
    required BuildContext context
  }) async{
    isLoading.value = !isLoading.value;
    if(email.isNotEmpty && password.isNotEmpty){
      http.Response response = await AuthServices.login(email, password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200){
        BearerToken.saveToken(responseMap['token']);
        BearerToken.saveCredentials(email, password);
        if(!context.mounted) return;
        Get.offAllNamed('/home');
      } else {
        if(!context.mounted) return;
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'Please fill in all fields');
    }
    isLoading.value = !isLoading.value;
  }
}