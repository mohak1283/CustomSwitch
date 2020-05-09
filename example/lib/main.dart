import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool status = false;
  bool smallStatus = false;
  bool largeStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Switch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Default Size',
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
            CustomSwitch(
              activeColor: Colors.pinkAccent,
              value: status,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  status = value;
                });
              },
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Value : $status',
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Small Custom Switch',
                style: TextStyle(color: Colors.black, fontSize: 20.0)),
            CustomSwitch(
              width: 55.0,
              height: 25.0,
              valueFontSize: 12.0,
              toggleSize: 15.0,
              activeColor: Colors.redAccent,
              value: smallStatus,
              onChanged: (value) {
                setState(() {
                  smallStatus = value;
                });
              },
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Value : $smallStatus',
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Large Custom Switch',
                style: TextStyle(color: Colors.black, fontSize: 20.0)),
            CustomSwitch(
              width: 125.0,
              height: 55.0,
              valueFontSize: 25.0,
              toggleSize: 45.0,
              activeColor: Colors.redAccent,
              value: largeStatus,
              onChanged: (value) {
                setState(() {
                  largeStatus = value;
                });
              },
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Value : $largeStatus',
            ),
          ],
        ),
      ),
    );
  }
}
