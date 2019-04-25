import 'package:flutter/material.dart';

//容器类
class ContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("ContainerView"),
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
                      return new PaddingView();
                    }));
                  },
                  child: new Text("padding测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new ConstrainedBoxView();
                    }));
                  },
                  child: new Text("ConstrainedBox测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new SizeBoxView();
                    }));
                  },
                  child: new Text("SizeBox测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new UnconstrainedBoxView();
                    }));
                  },
                  child: new Text("UnconstrainedBox测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new DecoratedBoxView();
                    }));
                  },
                  child: new Text("DecoratedBoxView测试")),
            ),
          ],
        ));
  }
}

//padding
class PaddingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("PaddingView"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: new Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Text("EdgeInsets.only(top: 60)"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
                child: Text("EdgeInsets.fromLTRB(10, 20, 30, 40)"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text("EdgeInsets.symmetric(vertical: 30)"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text("EdgeInsets.symmetric(horizontal: 30)"),
              ),
            ],
          ),
        ));
  }
}

//ConstrainedBox
class ConstrainedBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("ConstrainedBoxView"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: new Column(
            children: <Widget>[
              ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: 50, minWidth: double.infinity),
                child: Container(
                  color: Colors.greenAccent,
                  height: 10,
                ),
              ),
              Container(
                color: Colors.amber,
                height: 10,
              ),
            ],
          ),
        ));
  }
}

//SizeBox
class SizeBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("SizeBoxView"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: new Column(
            children: <Widget>[
              SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: Container(
                    color: Colors.amber,
                  ))
            ],
          ),
        ));
  }
}

//UnconstrainedBox
class UnconstrainedBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("UnconstrainedBoxView"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 50, minHeight: 100),
                  child: Container(
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                  child: UnconstrainedBox(
                    alignment: Alignment.topLeft,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 50, minHeight: 100),
                      child: Container(
                        color: Colors.greenAccent,
                      ),
                    ),
                  )),
            ),
          ],
        ));
  }
}

//DecoratedBox
class DecoratedBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("DecoratedBoxView"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4),
                  ],
                  gradient: LinearGradient(
                    colors: [Colors.deepOrange, Colors.deepOrange[200]],
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 80),
                child: Text(
                  "Click",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
