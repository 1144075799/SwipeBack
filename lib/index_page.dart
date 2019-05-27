import 'package:flutter/material.dart';
import './home_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
        child: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.push(
                context, 
                new MaterialPageRoute(builder: (context)=>HomePage())
              );
            },
            child: Text('第一个页面,进入下一个页面'),

          ),
        ),
      )
    );
  }
}