import 'dart:ui';

import 'package:flutter/material.dart';
class FrostedGlassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network('https://dss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=202774378,3644597628&fm=179&app=42&f=JPEG?w=121&h=161&s=3ADFAA5ECC500DCE2C2BDEBB0200A01E'),
          ),
          Center(
            child: ClipRect(//可剪裁的矩形
              child: BackdropFilter(//背景过滤器
                filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        'heloo world',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}