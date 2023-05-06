import 'dart:convert';
import "package:bloc_demo/UserRepository.dart";
import "package:bloc/bloc.dart";
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
import 'package:bloc_demo/detail_screen.dart';

//Class Home
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    TextEditingController filterKeyword = TextEditingController(text: "");

    return BlocProvider(
      create: (context) => UserBloc(
        RepositoryProvider.of<UserRepository>(context),
      )..add(LoadUserEvent()),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 42, 244, 197),
        appBar: AppBar(
          title: Center(
              child: const Text(
            'User Data List',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          backgroundColor: Color.fromARGB(255, 28, 160, 183),
        ),
        body: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: filterKeyword,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none),
                      hintText: "Eg: Johny",
                      hintStyle: TextStyle(color: Colors.black54),
                      suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.black,
                          iconSize: 25,
                          onPressed: () {
                            BlocProvider.of<UserBloc>(context)
                                .add(FilterUserEvent(
                              searchText: filterKeyword.text,
                            ));
                          })),
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (state is UserLoadingState) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (state is UserLoadedState) {
                      return ListView.builder(
                          itemCount: state.users.length,
                          itemBuilder: (BuildContext, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetailScreen(
                                        e: state.users[index],
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                  color: Color.fromARGB(255, 28, 160, 183),
                                  elevation: 4,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: ListTile(
                                    leading: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 0, 0),
                                      child:
                                          Container(child: Icon(Icons.people)),
                                    ),
                                    title: Text(
                                      state.users[index].name.toString(),
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    subtitle: Text(
                                        state.users[index].email.toString(),
                                        style: const TextStyle(
                                            color: Colors.white)),
                                  ),
                                ),
                              ),
                            );
                          });
                    }

                    if (state is UserErrorState) {
                      return Center(child: Text("Error"));
                    }

                    return Container();
                  },
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
