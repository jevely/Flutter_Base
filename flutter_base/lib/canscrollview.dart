import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//可滑动控件
class CanScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("CanScrollView"),
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
                      return new SingleChildScrollViewDemo();
                    }));
                  },
                  child: new Text("SingleChildScrollView")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new ListViewDemo();
                    }));
                  },
                  child: new Text("ListView")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new ListViewDemo2();
                    }));
                  },
                  child: new Text("ListView2")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new ListViewDemo3();
                    }));
                  },
                  child: new Text("ListView3")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new ListViewDemo4();
                    }));
                  },
                  child: new Text("ListView4")),
            ),
          ],
        ));
  }
}

//SingleChildScrollView
class SingleChildScrollViewDemo extends StatelessWidget {
  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("SingleChildScrollView"),
        ),
        body: SingleChildScrollView(
            child: Container(
          color: Colors.greenAccent,
          child: Column(
            children: str.split("").map((e) {
              return Text(
                e,
                textScaleFactor: 2,
              );
            }).toList(),
          ),
        )));
  }
}

//ListView
class ListViewDemo extends StatelessWidget {
  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("ListViewDemo"),
        ),
        body: ListView.builder(
            itemCount: 100,
            itemExtent: 50.0, //强制高度为50.0
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text("$index"));
            }));
  }
}

//ListView
class ListViewDemo2 extends StatelessWidget {
  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("ListViewDemo2"),
        ),
        body: ListView.separated(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
          },
          separatorBuilder: (BuildContext context, int index) {
            return divider1;
          },
        ));
  }
}

//ListView
class ListViewDemo3 extends StatelessWidget {
  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("ListViewDemo3"),
        ),
        body: ListView.separated(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
          },
          separatorBuilder: (BuildContext context, int index) {
            return divider1;
          },
        ));
  }
}

//无限-分页 ListView
class ListViewDemo4 extends StatelessWidget {
  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("ListViewDemo4"),
        ),
        body: ListViewDemo4Son());
  }
}

class ListViewDemo4Son extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListViewDemo4State();
  }
}

class ListViewDemo4State extends State<ListViewDemo4Son> {
  static const loadingTag = "##loading##"; //表尾标记
  var _words = <String>[loadingTag];

  Widget divider1 = Divider(
    color: Colors.blue,
  );

  @override
  void initState() {
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      itemBuilder: (context, index) {
        //如果到了表尾
        if (_words[index] == loadingTag) {
          //不足100条，继续获取数据
          if (_words.length - 1 < 100) {
            //获取数据
            _retrieveData();
            //加载时显示loading
            return LoadView();
          } else {
            //已经加载了100条数据，不再获取数据。
            return NoMoreView();
          }
        }
        //显示单词列表项
        return ListTile(title: Text(_words[index]));
      },
      itemCount: _words.length,
      separatorBuilder: (BuildContext context, int index) {
        return divider1;
      },
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(
          _words.length - 1,
          //每次生成20个单词
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      setState(() {
        //重新构建列表
      });
    });
  }
}

class LoadView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(16),
      alignment: Alignment.center,
      child: SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
        ),
      ),
    );
  }
}

class NoMoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16.0),
        child: Text(
          "没有更多了",
          style: TextStyle(color: Colors.grey),
        ));
  }
}
