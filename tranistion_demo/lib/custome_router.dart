import 'package:flutter/material.dart';

class CustomeRoute extends PageRouteBuilder {
  final Widget widget;
  CustomeRoute(this.widget)
  :super(
    transitionDuration:Duration(seconds: 1),
    pageBuilder:(
      BuildContext context,
      Animation<double> animations1,
      Animation<double> animations2,
    ){
      return widget;
    },
    transitionsBuilder:(
      BuildContext context,
      Animation<double> animations1,
      Animation<double> animations2,
      Widget child
    ){
      //淡入淡出动画
      // return FadeTransition(
      //   opacity: Tween(begin:0.0,end: 1.0)
      //   .animate(CurvedAnimation(
      //     parent: animations1,
      //     curve: Curves.fastOutSlowIn
      //   )),
      //   child: child,
      // );
      //缩放动画
      // return ScaleTransition(
      //   scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      //     parent: animations1,
      //     curve:Curves.fastOutSlowIn
      //   )),
      //   child: child,
      // );
      //旋转+缩放
      // return RotationTransition(
      //   turns: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      //     parent:animations1,
      //     curve: Curves.fastOutSlowIn
      //   )),
      //   child: ScaleTransition(
      //     scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      //       parent:animations1,
      //       curve:Curves.fastOutSlowIn
      //     )
      //     ),
      //     child: child,
      //   ),
      // );
      //左右滑动路由动画
      return SlideTransition(
        position: Tween<Offset>(
          begin: Offset(-1.0,0.0),
          end: Offset(0.0,0.0)
        ).animate(CurvedAnimation(
          parent:animations1,
          curve:Curves.fastOutSlowIn
        )),
        child: child,
      );
    }
  );
}