import 'package:flutter/material.dart';

//布局界面
class LayoutView extends StatelessWidget {
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
                      return new ColumnRowView();
                    }));
                  },
                  child: new Text("Column/Row布局测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new FlexView();
                    }));
                  },
                  child: new Text("弹性布局测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new WrapFlowView();
                    }));
                  },
                  child: new Text("流式布局测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new StackPositionedView();
                    }));
                  },
                  child: new Text("层叠布局测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new StackPositionedView2();
                    }));
                  },
                  child: new Text("层叠布局测试2")),
            ),
          ],
        ));
  }
}

//线性布局页面
class ColumnRowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("ColumnRowView"),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("hello"), Text("world")],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("hello"), Text("world")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text(
                "hello",
                style: TextStyle(fontSize: 40),
              ),
              Text("world")
            ],
          ),
        ],
      ),
    );
  }
}

//弹性布局页面
class FlexView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("FlexView"),
      ),
      body: new Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.deepOrange,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.blue,
                ),
                flex: 2,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: SizedBox(
              height: 200,
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purpleAccent,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amberAccent,
                    ),
                    flex: 1,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

//流式布局页面
class WrapFlowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: Text("WrapFlowView"),
        ),
        body: Flex(direction: Axis.horizontal, children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.greenAccent,
                child: Wrap(
                  spacing: 20,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    Chip(
                      label: Text("asdfij"),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Text("A"),
                      ),
                    ),
                    Chip(
                      label: Text("asdfij"),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Text("A"),
                      ),
                    ),
                    Chip(
                      label: Text("asdfij"),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Text("A"),
                      ),
                    ),
                    Chip(
                      label: Text("asdfij"),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Text("A"),
                      ),
                    ),
                    Chip(
                      label: Text("asdfij"),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Text("A"),
                      ),
                    ),
                  ],
                ),
              )),
        ]));
  }
}

//层叠布局
class StackPositionedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: Text("StackPositionedView"),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                color: Colors.purple,
                child: Text("sdlfj"),
              ),
              Positioned(
                child: Text("sdlfj"),
                top: 30,
              ),
              Positioned(
                child: Text("sdlfj"),
                left: 30,
              )
            ],
          ),
        ));
  }
}

//层叠布局2
class StackPositionedView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: Text("StackPositionedView2"),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                child: Text("132132"),
                top: 30,
              ),
              Container(
                color: Colors.purple,
                child: Text("sdlfj"),
              ),
              Positioned(
                child: Text("456456"),
                left: 30,
              )
            ],
          ),
        ));
  }
}
