import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: PageView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/icon/splashanimation.json',
                    height: 200,
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    'FlottieCook',
                    style: GoogleFonts.agbalumo(fontSize: 20),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text('Login'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
