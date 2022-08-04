import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String title = 'App title';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("asdf"), //widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(50),
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: Image.asset('assets/images/grey.png'),
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                Beamer.of(context).beamToNamed('/animal'),
              }),
    );
  }
}
