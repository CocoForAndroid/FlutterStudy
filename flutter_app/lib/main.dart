import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DNF Garllery',
        home: Scaffold(
            appBar: AppBar(
              title: Text('DNF'),
            ),
            body: _buildGrid()));
  }

  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 200,
        padding: const EdgeInsets.all(10),
        children: _buildItem(),
      );

  List<Container> _buildItem() => List.generate(
      30,
      (i) => Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: const Color(0xFFF6F6F6), width: 1)),
            margin: const EdgeInsets.all(10),
            child: Image.asset('images/dnf${i % 3}.jpg'),
          ));
}
