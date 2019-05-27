import 'package:flutter/material.dart';
import './third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
        child: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.push(
                context, 
                new MaterialPageRoute(builder: (context)=>ThirdPage())
              );
            },
            child: Text('第三个页面，进入下一个页面'),

          ),
        ),
      )
    );
  }
}