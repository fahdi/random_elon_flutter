import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  _openWebsite() async {
    const url = 'http://www.fahdmurtaza.com/';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/fahdi.jpg')),
            SizedBox(height: 20),
            Text('Fahad Murtaza', style: TextStyle(fontSize: 32.0)),
            SizedBox(height: 20),
            Text('Software engineer.', style: TextStyle(fontSize: 18.0)),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () { _openWebsite(); },
              child: Text('www.fahdmurtaza.com', style: TextStyle(fontSize: 18.0, decoration: TextDecoration.none)),
            ),
          ],
        ),
      ),
    );
  }
}
