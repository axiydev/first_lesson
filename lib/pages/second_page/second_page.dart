/*
Created by Axmadjon Isaqov on 16:55:59 18.07.2022
© 2022 @axi_dev 
*/
import 'package:flutter/material.dart';

///OrientationBuilder
class SecondPage extends StatefulWidget {
  static const String path = '/second';
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          //portrait widget
          return portraitWidget;
        }
        //landscape widget
        return landcscapeWidget;
      })),
    );
  }

  ///portrait widget
  Widget get portraitWidget {
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => const ListTile(
              title: Text('salom'),
              leading: FlutterLogo(),
            ));
  }

  ///landscape widget
  Widget get landcscapeWidget {
    return GridView.count(
      crossAxisCount: 4,
      childAspectRatio: 1.5 / 1,
      children: [
        for (var i = 0; i <= 100; i++)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  FlutterLogo(
                    size: 70,
                  ),
                  Text('Salom')
                ],
              ),
            ),
          )
      ],
    );
  }
}
