import 'package:flutter/material.dart';

const String baseUrl = 'https://_/api.flottiecook.com';
const Map<String, String> headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

errorSnackBar(BuildContext context,String text){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    backgroundColor: Colors.red,
    duration: const Duration(seconds: 3),
  ));
}