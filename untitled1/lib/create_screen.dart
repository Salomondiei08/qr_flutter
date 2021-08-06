import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class QrScreen extends StatefulWidget {

  @override
  _QrScreenState createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {

 String data = 'right';

  bool isOkey = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('QR IIT'),

      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: () { showModalBottomSheet(context: context, builder: (BuildContext context) { return Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Text('Enter the value you want to scan', style: TextStyle(
                fontSize: 20.0,
                color: Colors.red,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) {
                data = value;
              }
            ),
            RaisedButton(onPressed: () {
              setState(() {
                isOkey = true;
              });
              Navigator.pop(context);
            },
            child: Text('Generate the QR Code'),)
          ],
        ),
      ); }); },

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ QrImage(
            data: data,
            version: QrVersions.auto,
            size: 320,
            gapless: false,
          ),
            SizedBox(
              height: 20,
            ),
            Text(data, style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),),
        ],),
      ),
    );
  }
}
