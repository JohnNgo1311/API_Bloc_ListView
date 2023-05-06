import 'dart:convert';
import "package:bloc_demo/UserRepository.dart";
import "package:bloc/bloc.dart";
import 'package:bloc_demo/choose_page.dart';
import 'package:bloc_demo/detail_screen.dart';
import 'package:bloc_demo/home_page.dart';
import 'package:bloc_demo/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:bloc_demo/Model/User_Model.dart';
import 'package:bloc_demo/User_getAPI/bloc/user_get_api_event.dart';
import 'package:bloc_demo/User_getAPI/bloc/user_get_api_state.dart';
import 'package:bloc_demo/User_getAPI/bloc/user_get_api_bloc.dart';
import 'package:bloc_demo/shopping_page/shopping_page.dart';

class intialShoppingApp extends StatefulWidget {
  const intialShoppingApp({super.key});
  @override
  _intialShoppingAppState createState() => _intialShoppingAppState();
}

class _intialShoppingAppState extends State<intialShoppingApp> {
  int _selectedIndex = 0;
  void NavigateBottomBar(int trans) {
    setState(() {
      _selectedIndex = trans;
    });
  }

  void onBackButtonPressed() {
    Navigator.of(context).pop();
  }

  final List<Widget> _pages = [
    DetailScreen(e: UserModel()),
    Home(),
    LoginScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: _pages[_selectedIndex],
            ),
            bottomNavigationBar: BottomAppBar(
                child: Row(children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: onBackButtonPressed,
              ),
              SizedBox(),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  NavigateBottomBar(1);
                },
              ),
              IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    NavigateBottomBar(2);
                  })
            ]))));
  }
}
