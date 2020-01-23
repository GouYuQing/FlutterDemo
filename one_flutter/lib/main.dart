// import 'package:flutter/material.dart';
//  void main()=>runApp(MyApp(
//    items:new List<String>.generate(1000, (i)=>"item $i")
//  ));
//  class MyApp extends StatelessWidget{
//    final List<String> items;
//    MyApp({Key key,@required this.items}):super(key:key); 
//    @override
//    Widget build(BuildContext context){
//      return MaterialApp(
//        title: 'Welcome to Fluttter',
//        home: Scaffold(
//          appBar: AppBar(
//            title: Text('Welcome to the first app'),
//          ),



        //  body: Center(
           //基础样式
          //  child: Text('Flutter 是 Google推出并开源的移动应用开发框架，主打跨平台、高保真、高性能。开发者可以通过 Dart语言开发 App，一套代码同时运行在 iOS 和 Android平台。 Flutter提供了丰富的组件、接口，开发者可以很快地为 Flutter添加 native扩展。同时 Flutter还使用 Native引擎渲染视图，这无疑能为用户提供良好的体验。',
          //         textAlign: TextAlign.center,
          //         overflow: TextOverflow.ellipsis,
          //         maxLines: 1,
          //         style: TextStyle(
          //           fontSize: 25.0,
          //           color: Color.fromARGB(255, 255, 150, 150),
          //           decoration: TextDecoration.underline,
          //           decorationStyle: TextDecorationStyle.solid,
          //         ),
          //  ),

          //边框边距，宽高
          // child: Container(
          //   child: new Text('hello world',style: TextStyle(fontSize: 40.0)),
          //   alignment:Alignment.topLeft ,
          //   width: 500.0,
          //   height: 400.0,
          //   // color: Colors.lightBlue,
          //   padding: const EdgeInsets.fromLTRB(10.0,30.0,0.0,0.0),
          //   margin: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0,0.0),
          //   decoration: new BoxDecoration(
          //     gradient: const LinearGradient(
          //       colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]
          //     ),
          //     border: Border.all(width:5.0,color: Colors.red)
          //   ),

          // ),

          //图片
          // child: Container(
          //   child: new Image.network(
          //     'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2869236128,3983826644&fm=11&gp=0.jpg',
          //     fit: BoxFit.contain,
          //     // repeat: ImageRepeat.repeatX,
          //   ),
          //   width: 300.0,
          //   height: 200.0,
          //   color: Colors.lightBlue,
          // ),

        //  ),

        //ListView学习
        // body: new ListView(
        //   children: <Widget>[
        //     new ListTile(
        //       leading:new Icon(Icons.access_alarm),
        //       title:new Text('data one')
        //     ),
        //     new ListTile(
        //       leading:new Icon(Icons.backspace),
        //       title:new Text('data two')
        //     ),
        //     new ListTile(
        //       leading: new Icon(Icons.cached),
        //       title: new Text('data three'),
        //     )
        //   ],
        // ),

        //动态列表
//         body:new ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context,index){
//             return new ListTile(
//               title: new Text('${items[index]}'),
//             );
//           },
//         )
//        ),
//      );
//    }
//  }

//容器列表学习
// class MyList extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//   return ListView(
//     scrollDirection: Axis.horizontal,
//               children: <Widget>[
//                 new Container(
//                   width: 180.0,
//                   color: Colors.lightBlue,
//                 ),
//                  new Container(
//                   width: 180.0,
//                   color: Colors.yellow,
//                 ),
//                  new Container(
//                   width: 180.0,
//                   color: Colors.red,
//                 ),
//                  new Container(
//                   width: 180.0,
//                   color: Colors.purple,
//                 ),

//               ],
//   );
// }
// }

import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
    Widget build(BuildContext context){
      return MaterialApp(
        title: 'hello GridView',
        home: Scaffold(
          //网格学习
          // body:GridView.count(
          //   padding: const EdgeInsets.all(20.0),
          //   crossAxisSpacing: 10.0,
          //   crossAxisCount: 3,
          //   children: <Widget>[
          //     const Text('I am yuqing'),
          //     const Text('I love Web'),
          //     const Text('hello world'),
          //     const Text('我喜欢串串'),
          //     const Text('我喜欢看书'),
          //     const Text('我喜欢吃火锅')
          //   ],
          // )
          body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: 0.7
            ),
            children: <Widget>[
              new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1553627353,88714255&fm=11&gp=0.jpg',fit: BoxFit.cover),
              new Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=284537768,2551722649&fm=11&gp=0.jpg',fit: BoxFit.cover),
              new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1553627353,88714255&fm=11&gp=0.jpg',fit: BoxFit.cover),
              new Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=284537768,2551722649&fm=11&gp=0.jpg',fit: BoxFit.cover),
              new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1553627353,88714255&fm=11&gp=0.jpg',fit: BoxFit.cover),
              new Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=284537768,2551722649&fm=11&gp=0.jpg',fit: BoxFit.cover),

            ],
          ),
        ),
      );
    }
}