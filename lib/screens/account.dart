import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
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
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
