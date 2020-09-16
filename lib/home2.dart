import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text('AppBar'),
    );
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: appBar,
      body: Container(
        width: size.width,
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //container ocupying 80% of width
              width: size.width,
              height: screenHeight * 0.5,
              color: Colors.red,
            ),
            Container(
              //container ocupying 80% of width
              width: size.width,
              height: screenHeight * 0.5,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
