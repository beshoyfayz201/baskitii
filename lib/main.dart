import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.24000265
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange, buttonColor: Colors.orange),
      home: BasketBall(),
    );
  }
}
class BasketBall extends StatefulWidget {
  @override
  BasketBallState createState() => BasketBallState();
}
class BasketBallState extends State<BasketBall> {
  int aCounter = 0;
  int bCounter = 0;
//last modification
  conter_type a=conter_type.a;conter_type b=conter_type.b;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Points Counter"),
      ),
      body: Column(
        children: <Widget>[
          IntrinsicHeight(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("Team A", style: TextStyle(fontSize: 24)),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        aCounter.toString(),
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
//second with two methods
//                      buildbuttonsa(1),
//                      buildbuttonsa(2),
//                      buildbuttonsa(3),
                      //last with enums
                      buildcustombuttons(1, conter_type.a),
                      buildcustombuttons(2, conter_type.a),
                      buildcustombuttons(3, conter_type.a)
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                    width: 50,
                  ),
                  Column(
                    children: <Widget>[
                      Text("Team B", style: TextStyle(fontSize: 24),),
                      SizedBox(height: 30,),
                      Text(
                        bCounter.toString(),
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
//second
//                      buildbuttons(1),
//                      buildbuttons(2),
//                      buildbuttons(3)
                    //last
                      buildcustombuttons(1, conter_type.b),
                      buildcustombuttons(2, conter_type.b),
                      buildcustombuttons(3, conter_type.b)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: RaisedButton(
              onPressed: () {
               setState(() {
                 aCounter = bCounter = 0;
               });
              },
              child: Text("Reset"),
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }

  buildbuttonsa(int val) {
    return RaisedButton(
      child: Text("Add ${val.toString()} point"),
      onPressed: () {
        setState(() {
          aCounter += val;
        });
      },
    );
  }

  buildbuttons(int val) {
    return RaisedButton(
      child: Text("Add ${val.toString()} point"),
      onPressed: () {
        setState(() {
          bCounter += val;
        });
      },
    );
  }

  //one method to build all  buttons
  Widget buildcustombuttons(int val,conter_type t){
    return RaisedButton(
      child: Text("Add ${val.toString()} point"),
      onPressed: () {
        setState(() {
          (t==conter_type.a)?aCounter += val:bCounter += val;
        });
      },
    );
  }

}

//last modification
enum conter_type{a,b}
