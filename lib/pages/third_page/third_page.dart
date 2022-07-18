import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  static const String path = '/third_page';
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            children: [for (var i = 0; i <= 100; i++) helloWidget],
          ),
        ),
      ),
    );
  }

  Widget get helloWidget => Card(
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
      );
}
