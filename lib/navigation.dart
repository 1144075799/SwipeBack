import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './index_page.dart';
import './category_page.dart';
import './car_page.dart';
import './member_page.dart';

class NavigationPage extends StatefulWidget {
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

   // 放图标文字
  final List<BottomNavigationBarItem> bottomTabs=[
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text('分类')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text('购物车')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('会员中心')
    )
  ];

  //引入页面
  final List<Widget> tabBodies=[
    IndexPage(),
    CategoryPage(),
    CarPage(),
    MemberPage()
  ];

//建立索引
  int currentIndex=0;
  var currentPage;

  @override
  void initState() { 
    currentPage=tabBodies[currentIndex];  //开打首页
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,  //必须要三个以上
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index){
          setState(() {
           currentIndex=index;
           currentPage=tabBodies[currentIndex]; 
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children:tabBodies,
      ) ,
    );
  }
}

