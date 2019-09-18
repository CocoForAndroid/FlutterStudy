import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'count_model.dart';

class ExtraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("第二个页面"),
        ),
        body: Container(
            child: Stack(
          children: <Widget>[
            Consumer2<CountModel, int>(
              builder: (context, CountModel counter, int textSize, _) => Center(
                child: Text(
                  "计数内容${counter.value}",
                  style: TextStyle(fontSize: textSize.toDouble()),
                ),
              ),
            ),
            Positioned(
              child: Consumer<CountModel>(
                child: Icon(Icons.add),
                builder: (context, CountModel counter, child) => FlatButton(
                  child: child,
                  color: Colors.blue,
                  onPressed: () {
                    counter.increment();
                  },
                ),
              ),
              right: 10,
              bottom: 10,
            )
          ],
        )));
  }
}
