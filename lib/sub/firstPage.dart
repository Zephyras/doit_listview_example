import 'package:doit_listview_example/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../animalItem.dart';

class FirstApp extends StatelessWidget {
  final List<Animal> list; //애니말 리스트 선언
  FirstApp({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView.builder(
            itemBuilder: (context, position) {
              return GestureDetector(
                child: Card(
                  //이부분에 위젯을 이용해 데이터를 표시함
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        list[position].imagePath,
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                      Text(list[position].animalName)
                    ],
                  ),
                ),
                onTap: (){
                  AlertDialog dialog = AlertDialog(
                    content: Text(
                      '이 동물은 ${list[position].kind} 입니다',
                      style: TextStyle(fontSize: 30),
                    ),
                  );
                  showDialog(context: context, builder: (BuildContext context) => dialog);
                },
              );
            },
            itemCount: list.length,
          ),
          //child: Text('첫 번째 페이지'),
        ),
      ),
    );
  }
}
