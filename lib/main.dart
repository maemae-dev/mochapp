import 'package:flutter/material.dart';
import 'package:mochapp/screens/account.dart';
import 'package:mochapp/screens/home.dart';
import 'package:mochapp/util/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        canvasColor: Colors.white,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        Routes.home: (context) => MyHomePage(),
        Routes.account: (context) => AccountPage()
      },
    );
  }
}
