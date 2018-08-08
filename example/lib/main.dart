import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  /// This widget is the root of your application.
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Animated Text Kit'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              child: RotateAnimatedTextKit(
                text: ["Ant Man", "Superman", "Batman"],
                duration: Duration(milliseconds: 6000),
                textStyle: TextStyle(fontSize: 24.0, color: Colors.black),
              ),
            ),
            SizedBox(
              width: 200.0,
              child: FadeAnimatedTextKit(
                text: ["Ant Man", "Superman", "Batman"],
                textStyle: TextStyle(fontSize: 24.0, color: Colors.black),
              ),
            ),
            SizedBox(
              width: 200.0,
              child: TyperAnimatedTextKit(
                text: ["Ant Man", "Superman", "Batman"],
                duration: Duration(milliseconds: 10000),
                textStyle: TextStyle(fontSize: 24.0, color: Colors.black),
              ),
            ),
            SizedBox(
              width: 200.0,
              child: TypewriterAnimatedTextKit(
                text: ["Ant Man", "Superman", "Batman"],
                textStyle: TextStyle(fontSize: 24.0, color: Colors.black),
              ),
            ),
            /// colors.length >= 2
            SizedBox(
              width: 200.0,
              child: ColorizeAnimatedTextKit(
                text: ["Ant Man", "Superman", "Batman"],
                textStyle: TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
                colors: [
                  Colors.purple,
                  Colors.blue,
                  Colors.yellow,
                  Colors.red,
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}