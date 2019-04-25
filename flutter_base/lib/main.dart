import 'package:flutter/material.dart';
import 'package:flutter_base/baseview.dart';
import 'package:flutter_base/container.dart';
import 'package:flutter_base/layout.dart';
import 'package:flutter_base/materialview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MainView(),
    );
  }
}

//主界面
class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("MainView"),
        ),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new BaseView();
                    }));
                  },
                  child: new Text("基本控件")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new LayoutView();
                    }));
                  },
                  child: new Text("布局控件")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new ContainerView();
                    }));
                  },
                  child: new Text("容器控件")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                          return new MaterialBodyView();
                        }));
                  },
                  child: new Text("Material")),
            ),
          ],
        ));
  }
}
