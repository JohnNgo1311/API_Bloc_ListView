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

class initalPage extends StatefulWidget {
  const initalPage({super.key});
  @override
  _initalPageState createState() => _initalPageState();
}

class _initalPageState extends State<initalPage> {
  int _selectedIndex = 0;
  void NavigateBottomBar(int trans) {
    setState(() {
      _selectedIndex = trans;
    });
  }

  void onBackButtonPressed() {
    Navigator.of(context).maybePop();
  }

  final List<Widget> _pages = [
    choosePage(),
    Home(),
    LoginScreen(),
    ShoppingApp(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      extendBody: true,
      bottomNavigationBar: Stack(children: [
        BottomAppBar(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                onBackButtonPressed();
              },
            ),
            IconButton(
              icon: Icon(Icons.list_sharp),
              onPressed: () {
                NavigateBottomBar(1);
              },
            ),
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                NavigateBottomBar(2);
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                NavigateBottomBar(3);
              },
            ),
          ]),
        ),
      ]),
      body: Center(
        child: _pages[_selectedIndex],
      ),
    ));
  }
}
