import 'package:flutter/material.dart';
import 'package:ganak_admin/screens/employees_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
      //   '/login': (context) => FutureBuilder(
      //     future: Firebase.initializeApp(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasError) {
      //         print('You have an error! ${snapshot.error.toString()}');
      //         return const Text('Something went wrong!');
      //       } else if (!snapshot.hasData) {
      //         return const Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       } else {
      //         return AuthenticationWrapper();
      //       }
      //     },
      //   ),
      //   // When navigating to the "/second" route, build the SecondScreen widget.
      //   '/signup': (context) => FutureBuilder(
      //     future: Firebase.initializeApp(),
      //     builder: (context, snapshot) {
      //       final data = snapshot.data;
      //
      //       if (snapshot.hasError) {
      //         print('You have an error! ${snapshot.error.toString()}');
      //         return Text('Something went wrong!');
      //       } else {
      //         return SignupWrapper();
      //       }
      //     },
      //   ),
        '/': (context) => EmployeesList(),

      },

    );
  }
}
