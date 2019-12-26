import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ユーザー"),
        actions: <Widget>[
          Material(
            elevation: 4.0,
            shape: CircleBorder(),
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: Ink.image(
              width: 45,
              height: 45,
              image: NetworkImage(
                  'https://pbs.twimg.com/profile_images/801866113017475072/235h8WlK_reasonably_small.jpg'),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {},
              ),
            ),
          )
        ],
      ),
      body: Center(child: Text('ユーザー編集画面')),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
