import 'dart:convert';
import "package:bloc_demo/UserRepository.dart";
import "package:bloc/bloc.dart";
import 'package:bloc_demo/home_page.dart';
import 'package:bloc_demo/login/bloc/login_bloc.dart';
import 'package:bloc_demo/login/bloc/login_event.dart';
import 'package:bloc_demo/login/bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:bloc_demo/choose_page.dart';
import 'package:bloc_demo/initial_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Text controller
  final _accountCtroller = TextEditingController();
  final _passCtroller = TextEditingController();

  String username = "";
  String password = "";

  bool _isObscure = true;
// APP
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginLoaded && state.check == true) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => initalPage()));
          }
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 130, 30, 25),
          constraints: BoxConstraints.expand(),
          color: Color.fromARGB(255, 255, 255, 255),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: FlutterLogo()),
                ),

                // Hi and WELCOME BACK FIELD
                Text(
                  'Hi!',
                  style: TextStyle(
                      color: Color.fromARGB(255, 28, 160, 183),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Text(
                    'Welcome Back!!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                //"username field"
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: TextField(
                        onChanged: (newUsername) {
                          print(newUsername);
                          username = newUsername;
                        },
                        controller: _accountCtroller,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        decoration: InputDecoration(
                            labelText: "Username",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 135, 129, 126))))),

                // "password" field
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        onChanged: (newPassword) {
                          print(newPassword);
                          password = newPassword;
                        },
                        controller: _passCtroller,
                        obscureText: _isObscure,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 155, 153, 152)),
                          suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // sign in field
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: SizedBox(
                      width: double.infinity,
                      height: (50),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 28, 160, 183),
                        ),
                        onPressed: () {
                          BlocProvider.of<LoginBloc>(context).add(
                              LoginButtonPressed(
                                  password: _passCtroller.text,
                                  username: _accountCtroller.text));
                        },
                        child: Text("Sign in",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
                      )),
                ),

                //sign up and forget password field
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "sign up.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 158, 158, 158),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget password?",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 158, 158, 158),
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
