import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'webview.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String numb ="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WhatsApp",
                  style: TextStyle(fontSize: 22),),
                Text("Number Generator",style: TextStyle(fontSize: 22, color: Colors.blue),)
              ],
            ),
            Text("by: Anand Sathya", style: TextStyle(fontSize: 15),)
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 160),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (txt){
                setState(() {
                  numb=txt;
                });
              },
              decoration: InputDecoration(
                  hintText: "WhatsApp Phone Number",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            new Center(
              child: new InkWell(
                  child: new Text('Open Number', style: TextStyle(fontSize: 15),),
                  onTap: () => launch('https://wa.me/$numb')
              ),
            ),
          ],
        ),
      ),
    );
  }
}


