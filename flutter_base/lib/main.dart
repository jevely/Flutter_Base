import 'package:flutter/material.dart';

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
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new RouteView();
                    }));
                  },
                  child: new Text("跳转测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new TextView();
                    }));
                  },
                  child: new Text("文字测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new ButtonView();
                    }));
                  },
                  child: new Text("按钮测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new SelectView();
                    }));
                  },
                  child: new Text("单选复选测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new InputTableView();
                    }));
                  },
                  child: new Text("输入框和表单测试")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new InputTableView2();
                    }));
                  },
                  child: new Text("输入框和表单测试-监听输入")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new InputTableView3();
                    }));
                  },
                  child: new Text("输入框和表单测试-焦点控制")),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) {
                      return new InputTableView4();
                    }));
                  },
                  child: new Text("输入框和表单测试-表单")),
            ),
          ],
        ));
  }
}

//跳转页面
class RouteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("RouteView"),
      ),
      body: new Text("跳转页面"),
    );
  }
}

//文字页面
class TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("TextView"),
        ),
        body: new Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 8),
              color: Colors.blueAccent,
              child: Text(
                "Hello",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8),
              color: Colors.amberAccent,
              child: Text(
                "Hello" * 20,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8),
              color: Colors.black26,
              child: Text(
                "Hello" * 20,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8),
              color: Colors.greenAccent,
              child: Text(
                "Hello",
                textScaleFactor: 1.5,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8),
              color: Colors.orange,
              child: Text(
                "Hello",
                style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 25,
                    height: 2,
                    //控件高度，相当于字体大小再乘以这个值
                    background: new Paint()..color = Colors.yellow,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed,
                    decorationColor: Colors.white),
              ),
            ),
            Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "百度一下:", style: TextStyle(color: Colors.teal[300])),
                  TextSpan(
                      text: "https://www.baidu.com",
                      style: TextStyle(color: Colors.blue[200])),
                ]))),
          ],
        ));
  }
}

//按钮页面
class ButtonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("ButtonView"),
      ),
      body: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4),
            child: RaisedButton(
              onPressed: () {},
              child: Text("RaisedButton"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: FlatButton(
              onPressed: () {},
              child: Text("FlatButton"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: OutlineButton(
              onPressed: () {},
              child: Text("OutlineButton"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.accessibility),
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: FlatButton(
              onPressed: () {},
              child: Text("MyButton"),
              textColor: Colors.deepOrange,
              disabledTextColor: Colors.black26,
              color: Colors.blue,
              disabledColor: Colors.grey[700],
              highlightColor: Colors.blue[800],
              splashColor: Colors.blue[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("SelectView"),
      ),
      body: new Select(),
    );
  }
}

class Select extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SelectState();
  }
}

class SelectState extends State<Select> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(4),
          child: Switch(
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                });
              }),
        ),
        new Container(
          padding: EdgeInsets.all(4),
          child: Checkbox(
              value: _checkboxSelected,
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });
              }),
        )
      ],
    );
  }
}

//输入框和表单
class InputTableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("InputTableView"),
      ),
      body: new Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                hintText: "输入名字",
                labelText: "用户名",
                prefixIcon: Icon(Icons.account_circle)),
            autofocus: true,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "输入密码",
                labelText: "密码",
                prefixIcon: Icon(Icons.border_color)),
            obscureText: true,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "输入搜索内容",
                labelText: "搜索内容",
                prefixIcon: Icon(Icons.search)),
            textInputAction: TextInputAction.search,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "输入数字",
                labelText: "数字",
                prefixIcon: Icon(Icons.phone)),
            keyboardType: TextInputType.phone,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "不一样的光标",
                labelText: "不一样的光标",
                prefixIcon: Icon(Icons.share)),
            cursorColor: Colors.deepOrange,
            cursorRadius: Radius.circular(5),
            cursorWidth: 10,
          ),
        ],
      ),
    );
  }
}

//输入框和表单2
class InputTableView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("InputTableView2"),
      ),
      body: new Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                hintText: "输入名字",
                labelText: "用户名",
                prefixIcon: Icon(Icons.account_circle)),
            autofocus: true,
            onChanged: (result) {
              print(result);
            },
          ),
          MyTextView(),
        ],
      ),
    );
  }
}

class MyTextView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyTextState();
  }
}

class MyTextState extends State<MyTextView> {
  TextEditingController _unameController = new TextEditingController();

  @override
  void initState() {
    //监听输入改变
    _unameController.addListener(() {
      print("Controller:" + _unameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      decoration: InputDecoration(
          hintText: "输入密码",
          labelText: "密码",
          prefixIcon: Icon(Icons.border_color)),
      obscureText: true,
      controller: _unameController, //设置controller
    );
  }
}

//输入框和表单3
class InputTableView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("InputTableView3"),
      ),
      body: FocusDemoView(),
    );
  }
}

class FocusDemoView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FocusState();
  }
}

class FocusState extends State<FocusDemoView> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState() {
    focusNode1.addListener(() {
      print("输入框是否有焦点:" + focusNode1.hasFocus.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
              hintText: "输入用户名",
              labelText: "用户名",
              prefixIcon: Icon(Icons.accessibility)),
          autofocus: true,
          focusNode: focusNode1,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "输入密码",
              labelText: "密码",
              prefixIcon: Icon(Icons.description)),
          obscureText: true,
          focusNode: focusNode2,
        ),
        FlatButton(
            onPressed: () {
              FocusScope.of(context).requestFocus(focusNode2);
            },
            child: Text("移动光标1")),
        FlatButton(
            onPressed: () {
              if (null == focusScopeNode) {
                focusScopeNode = FocusScope.of(context);
              }
              focusScopeNode.requestFocus(focusNode1);
            },
            child: Text("移动光标2")),
        FlatButton(
            onPressed: () {
              focusNode1.unfocus();
              focusNode2.unfocus();
            },
            child: Text("消灭光标")),
      ],
    );
  }
}

//输入框和表单4
class InputTableView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("InputTableView4"),
        ),
        body: TableView4());
  }
}

class TableView4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TableState4();
  }
}

class TableState4 extends State<TableView4> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
        key: _formKey,
        autovalidate: true,
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              controller: _unameController,
              decoration: InputDecoration(
                  hintText: "请输入用户名",
                  labelText: "用户名",
                  prefixIcon: Icon(Icons.accessibility)),
              validator: (text) {
                if (text.isNotEmpty) {
                  return null;
                } else {
                  return "用户名不能为空";
                }
              },
            ),
            TextFormField(
              controller: _pwdController,
              decoration: InputDecoration(
                  hintText: "请输入密码",
                  labelText: "密码",
                  prefixIcon: Icon(Icons.description)),
              obscureText: true,
              validator: (text) {
                if (text.length < 5) {
                  return "密码长度不能小于5";
                } else {
                  return null;
                }
              },
            ),
            RaisedButton(
              onPressed: () {
                if ((_formKey.currentState as FormState).validate()) {
                  //验证通过提交数据
                  print("------------登录验证通过了------------");
                }
              },
              child: Text("登录"),
            )
          ],
        ));
  }
}
