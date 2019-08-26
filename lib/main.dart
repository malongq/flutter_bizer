//import 'package:flutter/material.dart';
//
//void main()=>runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: '贝塞尔曲线',
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primarySwatch: Colors.green
//      ),
//      home: HomePage(),
//    );
//  }
//
//}
//
//class HomePage extends StatelessWidget{
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Column(
//        children: <Widget>[
//          ClipPath(
//            clipper: BeiSaiEr(),
//            child: Container(
//              height: 200.0,
//              color: Colors.blueAccent,
//            ),
//          )
//        ],
//      ),
//    );
//  }
//
//}
//
//class BeiSaiEr extends CustomClipper<Path> {
//
//  @override
//  Path getClip(Size size) {
//    var path = Path();
//    path.lineTo(0.0, 0.0);
//    path.lineTo(0.0, size.height-80.0);
//
//    var firstControl = Offset(size.width/2,size.height);
//    var firstEnd = Offset(size.width, size.height-80.0);
//    path.quadraticBezierTo(firstControl.dx, firstControl.dy, firstEnd.dx, firstEnd.dy);
//
//    path.lineTo(size.width, size.height-80.0);
//    path.lineTo(size.width, 0.0);
//
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) {
//    return false;
//  }
//}

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '贝塞尔曲线',
      home: Scaffold(
        appBar: AppBar(title: Text('贝塞尔曲线'),),
        body: Column(
          children: <Widget>[
            ClipPath(
              child: Container(height: 200.0,color: Colors.red,),
              clipper: CustomClipperF(),
            )
          ],
        ),
      ),
    );
  }

}

class CustomClipperF extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {

//    var path = Path();
//    path.lineTo(0.0, 0.0);
//    path.lineTo(0.0, size.height-150.0);
//    var a = Offset(size.width/2, size.height);
//    var b = Offset(size.width, size.height-150.0);
//    path.quadraticBezierTo(a.dx, a.dy, b.dx, b.dy);
//    path.lineTo(size.width, size.height-150.0);
//    path.lineTo(size.width, 0.0);
//    return path;

    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height-60.0);

    var a = Offset(size.width/4, size.height);
    var b = Offset(size.width/2, size.height-60.0);
    path.quadraticBezierTo(a.dx, a.dy, b.dx, b.dy);

    var a1 = Offset(size.width/4*3, size.height-120.0);
    var b1 = Offset(size.width, size.height-60.0);
    path.quadraticBezierTo(a1.dx, a1.dy, b1.dx, b1.dy);

    path.lineTo(size.width, size.height-60.0);
    path.lineTo(size.width, 0.0);


    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}