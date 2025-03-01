import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danmaku Universes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Danmaku Universes',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add navigation to the game page
                Navigator.pushNamed(context, '/game');
              },
              child: Text('Start Game'),
            ),
          ],
        ),
      ),
    );
  }

}