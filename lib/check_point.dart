import 'package:flutter/material.dart';

class CheckPoint extends StatelessWidget {
  final int checkedTill;
  final List<String> checkPoints;
  final Color checkPointFilledColor;
  final double circleDia = 32.0;

  const CheckPoint({Key? key, required this.checkedTill, required this.checkPoints, required this.checkPointFilledColor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
        final double cWidth =
      ((constraints.maxWidth - (30.0 * (checkPoints.length + 1))) /
          (checkPoints.length - 1));
    return Container(
    height: 55.0,
    child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
    Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: checkPoints.map((e) {
          int index = checkPoints.indexOf(e);
          print(index);
          return Container(
            height: circleDia,
            child: Row(
              children: <Widget>[
                Container(
                  width: circleDia,
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index <= checkedTill
                        ? checkPointFilledColor
                        : checkPointFilledColor.withOpacity(0.2),
                  ),
                ),
                index != (checkPoints.length - 1)
                    ? Container(
                        color: index < checkedTill
                            ? checkPointFilledColor
                            : checkPointFilledColor.withOpacity(0.2),
                        height: 4.0,
                        width: cWidth,
                      )
                    : Container(),
              ],
            ),
          );
        }).toList(),
      ),
    ),
    Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: checkPoints.map((e) {
          return Text(e, style: TextStyle(fontWeight: FontWeight.bold));
        }).toList(),
      ),
    ),
        ],
      ),
        );
      },);
  }
}