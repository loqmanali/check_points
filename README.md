<p align="center">Easy use Check Points to show Status Change👌</p>

> ***Caveat***: This package is an early stage. Not enough testing has been done to guarantee stability. Some APIs may change.




## Installation

#### 1. Depend on it

Add this to your package's pubspec.yaml file:
``` yaml
dependencies:
  status_change: ^[latest_version]
```

#### 2. Install it
You can install packages from the command line:

with Flutter:
``` console
$ flutter pub get
```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

#### 3. Import it
Now in your Dart code, you can use:
``` dart
import 'package:status_change/status_change.dart';
```

## Basic Usage

``` dart
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
```
