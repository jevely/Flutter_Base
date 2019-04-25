import 'package:flutter/material.dart';

//material
//class MaterialView extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialBodyView();
//  }
//}

class MaterialBodyView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MaterialBodyState();
  }
}

class MaterialBodyState extends State<MaterialBodyView>
    with SingleTickerProviderStateMixin {
  TabController _tabController; //需要定义一个Controller
  List tabs = ["新闻", "历史", "图片"];

  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.drag_handle),
        title: Text("MaterialView"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                print("点击分享");
              })
        ],
        elevation: 10,
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        bottom: TabBar(
          tabs: tabs.map((e) => Tab(text: e)).toList(),
          controller: _tabController,
        ),
      ),
    );
  }
}
