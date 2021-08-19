import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String shown = ' ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/welcome.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.0,
                width: 200.0,
              ),
              Container(
                color: Colors.lightBlueAccent,
                child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Type anything here',
                    ),
                    onSubmitted: (String str) {
                      setState(() {
                        shown = str;
                      });
                    }),
              ),
              // ElevatedButton(
              //   onPressed: () {},
              //   child: Text('Enter'),
              // ),
              // SizedBox(
              //   height: 50.0,
              // ),
              SizedBox(
                height: 80.0,
                width: 180.0,
                child: Divider(
                  thickness: 2.0,
                  color: Colors.white70,
                ),
              ),
              Text(
                shown,
                style: TextStyle(
                  fontSize: 40.0,
                  backgroundColor: Colors.lightBlueAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
