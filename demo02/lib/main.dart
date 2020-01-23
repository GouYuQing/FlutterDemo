import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      //层叠布局
      // var stack = new Stack(
      //   alignment: const FractionalOffset(0.5, 0.8),
      //   children: <Widget>[
      //     new CircleAvatar(
      //       backgroundImage: new NetworkImage('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1748335010,966909828&fm=11&gp=0.jpg'),
      //       radius: 100.0,
      //     ),

          // new Container(
          //   decoration: new BoxDecoration(
          //     color: Colors.white,
          //   ),
          //   padding: EdgeInsets.all(5.0),
          //   child: new Text('data data1'),
          // )
          
          //用Positioned更灵活些
      //     new Positioned(
      //       top: 10.0,
      //       left: 10.0,
      //       child: new Text('data'),
      //     ),
      //     new Positioned(
      //       bottom: 10.0,
      //       right: 50.0,
      //       child: new Text('data111'),
      //     )
      //   ],
      // );

      //卡片布局
      var card = new Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: new Text('hello world',style:TextStyle(fontWeight:FontWeight.w500)),
              subtitle: new Text('data111'),
              leading: new Icon(Icons.accessibility,color:Colors.lightBlue),
            ),
            new Divider(),
             ListTile(
              title: new Text('hello world22222',style:TextStyle(fontWeight:FontWeight.w500)),
              subtitle: new Text('data2222'),
              leading: new Icon(Icons.accessibility,color:Colors.lightBlue),
            ),
            new Divider(),
             ListTile(
              title: new Text('hello world4444',style:TextStyle(fontWeight:FontWeight.w500)),
              subtitle: new Text('data4444'),
              leading: new Icon(Icons.accessibility,color:Colors.lightBlue),
            ),
            new Divider(),
          ],
        ),
      );
      return MaterialApp(
        title: 'Row Layout learning',
        home: Scaffold(
          appBar: new AppBar(
            title: new Text('水平方向布局'),
          ),
          //水平布局
          // body: new Row(
          //   children: <Widget>[
          //     Expanded(child: new RaisedButton(
          //       onPressed: (){},
          //       color: Colors.redAccent,
          //       child: new Text('red'),
          //     ),),
              
          //     new RaisedButton(
          //       onPressed: (){},
          //       color: Colors.blueAccent,
          //       child: new Text('blue'),
          //     ),
          //       Expanded(child: new RaisedButton(
          //       onPressed: (){},
          //       color: Colors.yellowAccent,
          //       child: new Text('yellow'),
          //     ),),
          //   ],
          // ),

          //垂直布局
          // body: 
          // Center(child:Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('data 100 bbbb'),
          //     Text('data 200ee'),
          //     Text('data 300')
          //   ],
          // ),
          // )

          //Stack 层叠布局
          // body: Center(child: stack),

          //Card 卡片布局
            body: Center(child: card),
        ),
      );
    }
}