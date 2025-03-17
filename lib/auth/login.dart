import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _scureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Center(
              child: PageView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        'assets/icon/splashanimation.json',
                        height: 239,
                        width: 239,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'LattieCook',
                        style: GoogleFonts.agbalumo(fontSize: 34),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail_rounded,
                              color: const Color.fromARGB(111, 239, 76, 212),
                            ),
                            fillColor: Color.fromARGB(255, 233, 233, 233),
                            filled: true,
                            labelText: 'Email',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 233, 233, 233),
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 233, 233, 233),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        child: TextField(
                          obscureText: _scureText,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_reset_rounded,
                              color: const Color.fromARGB(111, 239, 76, 212),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _scureText = !_scureText;
                                });
                              },
                              icon:
                                  _scureText
                                      ? Icon(
                                        Icons.visibility_off,
                                        color: const Color.fromARGB(
                                          111,
                                          239,
                                          76,
                                          212,
                                        ),
                                      )
                                      : Icon(
                                        Icons.visibility,
                                        color: const Color.fromARGB(
                                          111,
                                          239,
                                          76,
                                          212,
                                        ),
                                      ),
                            ),
                            labelText: 'Password',
                            fillColor: Color.fromARGB(255, 233, 233, 233),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 233, 233, 233),
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 233, 233, 233),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        width: 400,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(142, 230, 110, 214),
                          ),
                          child: Text(
                            "Log In",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        child: Text("Forgot Password?"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 30,
              right: 30,
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Color.fromARGB(142, 230, 110, 214),
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Create New Account",
                    style: GoogleFonts.poppins(color: Color.fromARGB(142, 230, 110, 214)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
