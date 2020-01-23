// import 'package:flutter/material.dart';
// class Product{
//   final String title;
//   final String description;
//   Product(this.title,this.description);
// }

// void main(){
//   runApp(MaterialApp(
//     title:'导航数据传递和接受',
//     home:ProductList(
//       products:List.generate(20, (i)=>Product('商品$i','这是一个商品详情，编号为$i'))
//     )
//   ));
// }

// class ProductList extends StatelessWidget {
//   final List<Product> products;
//   ProductList({Key key,@required this.products}):super(key:key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('商品列表')),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context,index){
//           return ListTile(
//             title: Text(products[index].title),
//             onTap: (){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context)=>ProductDetail(product:products[index])
//                 ) );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class ProductDetail extends StatelessWidget {
//   final Product product;
//   ProductDetail({Key key,@required this.product}):super(key:key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${product.title}'),
//         ),
//         body: Center(child: Text('${product.description}'),),
//     );
//   }
// }

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title:'页面跳转返回数据',
    home:FirstPage()
  ));
}
class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('去找数据'),),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}
class RouteButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return RaisedButton(
      onPressed: (){
        myDate(context);
      },
      child: Text('去找数据'),
    );
  }
  myDate(BuildContext context) async{
    final result = await Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=>Lettledate())
      );
      Scaffold.of(context).showSnackBar(SnackBar(content:Text('$result')));
  }
}
class Lettledate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是数据'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('第一个'),
              onPressed: (){
                Navigator.pop(context,'121212121');
              },
            ),
            RaisedButton(
              child: Text('第二个'),
              onPressed: (){
                Navigator.pop(context,'525256233');
              },
            )
          ],
        ),
      ),
    );
  }
}
