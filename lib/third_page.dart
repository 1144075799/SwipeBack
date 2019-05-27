import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
        child: Center(
          child: RaisedButton(
            onPressed: (){
              
            },
            child: Text('最后一页'),

          ),
        ),
      )
    );
  }
}