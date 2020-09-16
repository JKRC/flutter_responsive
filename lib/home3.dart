import 'package:flutter/material.dart';

class Home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text('AppBar'),
    );
//    var size = MediaQuery.of(context).size;
//    var screenHeight = (size.height - appBar.preferredSize.height) -
//        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: appBar,
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Column(
            children: [
              Container(
                height: constraints.maxHeight / 5,
                width: constraints.maxWidth / 3,
                color: Colors.amber,
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          //container ocupying 80% of width
                          width: constraints.maxWidth,
                          height: constraints.maxHeight * 0.5,
                          color: Colors.red,
                        ),
                        Container(
                          //container ocupying 80% of width
                          width: constraints.maxWidth,
                          height: constraints.maxHeight * 0.5,
                          color: Colors.blue,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
