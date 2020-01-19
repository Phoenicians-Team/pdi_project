import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ActiveListening(), //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ActiveListening extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          child: Icon(
            Icons.mic,
            size: 200.0,
          ),
          padding: EdgeInsets.only(top: 150, bottom: 100),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: Center(
            child: RichText(
              text: TextSpan(
                text: "",
                children: [
                  TextSpan(
                    text: 'you have ',
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'cancer',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: ' but with ',
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'surgery',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, item) {
            return Padding(
              padding: const EdgeInsets.only(left: 40.0, bottom: 20.0),
              child: Text(
                "text - $item",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            );
          },
        )),
      ],
    ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final voiceToText = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Voice to Text",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: FlatButton(
            onPressed: () {
              setState(() {
                pressed = true;
              });
            },
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                voiceToText,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
