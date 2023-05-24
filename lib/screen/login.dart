import 'package:flutter/material.dart';
import 'package:smart_travaller/custom/custom_text_field.dart';
import 'package:smart_travaller/screen/main_screen.dart';
import 'package:smart_travaller/screen/singupScreen.dart';

String dropdownValue = 'Tourist';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? username;
  String? password;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.all(18),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 200,
                      ),
                      const Text(
                        'Smart traveller',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 30,
                          color: Colors.black38,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      CustomTextField(
                        name: 'please enter email',
                        scure: false,
                        function: (value) {
                          username = value;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextField(
                          name: 'password',
                          scure: true,
                          function: (value) {
                            password = value;
                          }),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: 300,
                        height: 60,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFF6AE792)),
                            side: MaterialStatePropertyAll(BorderSide(
                              color: Colors.white10,
                            )),
                            fixedSize: MaterialStatePropertyAll(
                              Size(100, 30),
                            ),
                          ),
                          onPressed: () {
                            if (username == 'admin' && password == 'admin') {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));
                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Text('WRONG USERNAE OR PASSWORD'),
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text('OK'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white60),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 300,
                        height: 60,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFF6AE792)),
                            side: MaterialStatePropertyAll(
                              BorderSide(
                                color: Colors.white10,
                              ),
                            ),
                            fixedSize: MaterialStatePropertyAll(
                              Size(100, 30),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ),
                            );
                            // Perform login functionality
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white60),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
