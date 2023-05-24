import 'package:flutter/material.dart';
import 'package:smart_travaller/custom/theme.dart';
import 'package:smart_travaller/screen/login.dart';

enum Gender { male, female }

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? _selectedRole;
  Gender? _selectedGender = Gender.male;
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final List<String> _roles = ['Tourist', 'Owner'];
  final List<String> _genders = ['Male', 'Female'];

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            color: Colors.white,
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('images/peakpx_5.jpg'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        TextFormField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: mainColor, width: 2),
                            ),
                            labelText: 'Username',
                            labelStyle: const TextStyle(color: Colors.black38),
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please enter a username';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: mainColor, width: 2),
                            ),
                            labelText: 'Email',
                            labelStyle: const TextStyle(color: Colors.black38),
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please enter an Email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: mainColor, width: 2),
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.black38),
                          ),
                          obscureText: true,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _confirmPasswordController,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: mainColor, width: 2),
                            ),
                            labelText: 'Confirm Password',
                            labelStyle: const TextStyle(color: Colors.black38),
                          ),
                          obscureText: true,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please confirm your password';
                            }
                            if (value != _passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        DropdownButtonFormField<String>(
                          value: _selectedRole,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedRole = newValue!;
                            });
                          },
                          items: _roles
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          decoration: const InputDecoration(
                            labelText: 'Role',
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio<Gender>(
                                value: Gender.male,
                                groupValue: _selectedGender,
                                onChanged: (Gender? value) {
                                  setState(() {
                                    _selectedGender = value;
                                  });
                                }),

                            // Checkbox(
                            //   value: _selectedGender == _genders[0],
                            //   onChanged: (bool? value) {
                            //     setState(() {
                            //       _selectedGender =
                            //           (value! ? _genders[0] : null)!;
                            //     });
                            //   },
                            // ),
                            Text(_genders[0]),
                            const SizedBox(width: 20),
                            // Checkbox(
                            //   value: _selectedGender == _genders[1],
                            //   onChanged: (bool? value) {
                            //     setState(() {
                            //       _selectedGender =
                            //           (value! ? _genders[1] : null)!;
                            //     });
                            //   },
                            // ),
                            Radio<Gender>(
                                value: Gender.female,
                                groupValue: _selectedGender,
                                onChanged: (Gender? value) {
                                  setState(() {
                                    _selectedGender = value;
                                  });
                                }),
                            Text(_genders[1]),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: 320,
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
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                              // Perform login functionality
                            },
                            child: const Text(
                              'Create a new account',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white60),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
