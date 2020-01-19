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
          child: GestureDetector(
            child: Icon(
              Icons.mic,
              size: 150.0,
            ),
            onTap: () {
              print("tap");
            },
            // padding: EdgeInsets.only(top: 150, bottom: 100),
          ),
          padding: EdgeInsets.only(top: 100, bottom: 50),
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
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'cancer',
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: ' but with ',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'surgery',
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
        Expanded(
            child: ListView(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(
                  child: Text('What do you think is causing my problem?',
                      style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(
                    child: Text(
                        'Is there more than one condition (disease) that could be causing my problem?',
                        style: TextStyle(fontSize: 20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                color: Colors.amber[100],
                child: const Center(
                    child: Text(
                        'What tests will you do to diagnose the problem and which of the conditions is present?',
                        style: TextStyle(fontSize: 20))),
              ),
            ),
            Container(
                child: FlatButton.icon(
              color: Colors.green,
              icon: Icon(Icons.settings),
              label: Text('Manual Mode'), //`Text` to display
              onPressed: () {
                //Code to execute when Floating Action Button is clicked
                //...
              },
            )),
          ],
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
