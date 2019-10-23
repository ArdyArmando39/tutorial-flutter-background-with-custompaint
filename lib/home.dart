import 'package:background_with_custompaint/background.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final items = List<String>.generate(30, (i) => "Item $i");

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenSize.height / 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    child: Text('N', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                    backgroundColor: Colors.purple,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Text('Your Name'),
                        Text('Your Address Location', style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210),
            child: CustomPaint(
              painter: BackgroundPainter(),
              child: Container(
                width: screenSize.width,
                height: screenSize.height,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260.0),
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                  child: ListTile(title: Text('Item $index'), subtitle: Text('Sub item $index'),),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
