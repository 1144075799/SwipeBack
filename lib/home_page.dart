import 'package:flutter/material.dart';
import './second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
        child: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.push(
                context, 
                new MaterialPageRoute(builder: (context)=>SecondPage())
              );
            },
            child: Text('第二个页面，进入下一个页面'),

          ),
        ),
      )
    );
  }
}