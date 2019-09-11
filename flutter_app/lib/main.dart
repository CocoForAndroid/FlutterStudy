import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            body: _buildBody()));
  }

  //创建body部分
  Widget _buildBody() => Container(
        child: ListView( children: <Widget>[
          _buildImage(),
          _buildTitleSection(),
          _buildCenterIcons(),
          _buildBottomSection()
        ],)
      );

  //顶部图片
  Image _buildImage() => Image.asset("images/lake.jpg",fit:BoxFit.cover);

  //标题行
  Widget _buildTitleSection() => Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      "这是一个标题",
                      style: TextStyle(color: Colors.black),
                    ),
                    padding: const EdgeInsets.only(bottom: 8),
                  ),
                  Container(
                      child: Text(
                    "这是一个副标题",
                    style: TextStyle(color: Colors.grey[500]),
                  ))
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text("41")
          ],
        ),
        padding: const EdgeInsets.all(32),
      );

  //中间图标部分
  Widget _buildCenterIcons() => Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildIconItem(0),
            _buildIconItem(1),
            _buildIconItem(2),
          ],
        ),
      );

  //底部文字部分
  Widget _buildBottomSection() => Container(
        padding: const EdgeInsets.all(32),
        child: Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.'),

      );


  //构造图标item
  Widget _buildIconItem(int index) {
    var icon;
    var title;
    switch (index) {
      case 0:
        icon = Icons.phone;
        title = "电话";
        break;
      case 1:
        icon = Icons.near_me;
        title = "导航";
        break;
      case 2:
        icon = Icons.share;
        title = "分享";
        break;
    }
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blue,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
