import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // Play Sound Func
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  // Build Key
  Expanded buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YOYO Xylophone',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, color: Colors.red),
              buildKey(soundNumber: 2, color: Colors.orange),
              buildKey(soundNumber: 3, color: Colors.yellow),
              buildKey(soundNumber: 4, color: Colors.green),
              buildKey(soundNumber: 5, color: Colors.cyan),
              buildKey(soundNumber: 6, color: Colors.blue),
              buildKey(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

// home: MyHomePage(title: 'YOYO Xylophone'),

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  void _incrementCounter() {
    setState(() {
      AudioCache audioCache = AudioCache();
      audioCache.play('sa.mp3');
      _counter++;
    });
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.blue, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.baby_changing_station),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
