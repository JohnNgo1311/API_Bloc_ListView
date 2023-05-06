import 'dart:convert';
import "package:bloc_demo/UserRepository.dart";
import "package:bloc/bloc.dart";
import 'package:bloc_demo/detail_screen.dart';
import 'package:bloc_demo/home_page.dart';
import 'package:bloc_demo/list_view_has_bottomappbar.dart';
import 'package:bloc_demo/login_screen.dart';
import 'package:bloc_demo/shopping_page/intial_shooping_page.dart';
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
import 'package:bloc_demo/shopping_page/intial_shooping_page.dart';

class choosePage extends StatefulWidget {
  const choosePage({super.key});
  @override
  _choosePageState createState() => _choosePageState();
}

class _choosePageState extends State<choosePage> {
  int _selectedIndex = 0;
  void NavigateBottomBar(int trans) {
    setState(() {
      _selectedIndex = trans;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 42, 244, 197),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 28, 160, 183)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return InitalShoppingApp();
                      }));
                    },
                    child: Text(
                      "Go To Shopping Page",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              SizedBox(
                height: 100,
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 28, 160, 183)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => initalListViewPage()));
                    },
                    child: Text(
                      "Go to ListView Page",
                      style: TextStyle(fontSize: 20),
                    )),
              )
            ]),
      ),
    ));
  }
}
