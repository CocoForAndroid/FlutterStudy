import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/count_model.dart';
import 'package:provider/provider.dart';

import 'extra_screen.dart';

void main() {
  final counter = CountModel();
  final textSize = 48;
  return runApp(Provider<int>.value(
    child: ChangeNotifierProvider.value(
      value: counter,
      child: MyApp(),
    ),
    value: textSize,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DNF Garllery',
        home: Scaffold(
            appBar: AppBar(
              title: Text('第一个页面'),
            ),
            body: FirstPage()));
  }
}

class FirstPage extends StatelessWidget {
  Widget build(BuildContext context) => Container(
        child: Stack(
          children: <Widget>[
            Center(
                child: GestureDetector(
              child: Text(
                '计数内容${Provider.of<CountModel>(context).value}',
                style:
                    TextStyle(fontSize: Provider.of<int>(context).toDouble()),
              ),
              onTap: () => {

              },
            )),
            Positioned(
              child: FloatingActionButton(
                child: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExtraScreen()));
                },
              ),
              right: 20,
              bottom: 20,
            )
          ],
        ),
      );
}
