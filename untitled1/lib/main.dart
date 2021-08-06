import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'QRViewExample.dart';
import 'create_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text("QR Scanner IIT"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  ElevatedButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => QRViewExample()));}, child: Text('Scan QR Code', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                  ),
                    ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => QrScreen()));}, child: Text('Create a new QR Code', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      )
    );
  }
}
