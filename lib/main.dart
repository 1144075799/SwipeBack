import 'package:flutter/material.dart';
import './index_page.dart';
import './navigation.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "滑动返回",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          platform: TargetPlatform.iOS,
          primaryColor: Colors.blue
        ),
        home: NavigationPage(),
      ),
    );
  }
}