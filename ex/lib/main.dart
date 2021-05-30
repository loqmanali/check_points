import 'package:check_points/check_points.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExView(),
    );
  }
}


class ExView extends StatelessWidget {
  const ExView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckPoint(
          checkedTill: 0,
          checkPoints: <String>[
            'Order',
            'Shipped',
            'Deliverd',
          ],
          checkPointFilledColor: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}