import 'package:flutter/material.dart';
import 'package:mochapp/util/routes.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double gridGap = 20.0;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(widget.title),
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
                    onTap: () {
                      Navigator.pushNamed(context, Routes.account);
                    },
                  ),
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: gridGap),
            sliver: SliverGrid.count(
              crossAxisSpacing: gridGap,
              mainAxisSpacing: gridGap,
              crossAxisCount: 2,
              // childAspectRatio: 0.8,
              children: List.generate(20, (index) => Item()),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.teal),
      // color: Colors.yellow,
      child: Center(
        child: Text(
          'data',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
