import 'package:flutter/material.dart';

///Grid view extent
class FourthPage extends StatefulWidget {
  static const String path = '/fourth_page';
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return gridViewPortrait;
          }
          return gridViewLandscape;
        },
      )),
    );
  }

  Widget get gridViewPortrait {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
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

  Widget get gridViewLandscape {
    return GridView.extent(
      shrinkWrap: true,
      maxCrossAxisExtent: 150,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: [
        for (var i = 0; i <= 100; i++)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  FlutterLogo(
                    size: 50,
                  ),
                  Flexible(child: Text('Salom'))
                ],
              ),
            ),
          )
      ],
    );
  }
}
