import 'package:flutter/material.dart';
import 'package:graduation_proj/screens/maha/home_screen.dart';

class SignUpScreen extends StatelessWidget {
//  const SignUpScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff2B8ECF),
                          fontFamily: 'Segoe',
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          labelText: '  User Name',
                          labelStyle: TextStyle(
                            color: Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'user name must be not empty';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          labelText: '  Phone Number',
                          labelStyle: TextStyle(
                            color: const Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(
                            Icons.phone_in_talk_outlined,
                            color: Colors.black,
                          ),
                          border: const OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'phone number must be not empty';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'email must be not empty';
                          } else if (value.contains('@')) {
                            return 'email must have "@"';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: '   E_mail',
                          labelStyle: const TextStyle(
                            color: Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'password must be not empty';
                          }
                          return null;
                        },
                        obscureText: true,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: const InputDecoration(
                          labelText: '   Password',
                          labelStyle: TextStyle(
                            color: Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_sharp,
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'gender must be not empty';
                          }
                          return null;
                        },
                        obscureText: true,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: const InputDecoration(
                          labelText: '   Gender',
                          labelStyle: const TextStyle(
                            color: Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: const Icon(
                            Icons.people_outline,
                            color: Colors.black,
                          ),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(50.0),
                          color: const Color(0xfff2B8ECF),
                          //color: Colors.cyanAccent,
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            height: 47,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0)),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              }
                            },
                            child: const Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: const Color(0xfff2B8ECF),
                                fontFamily: 'Segoe',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
