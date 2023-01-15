import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Text(
      "Bienvenue",
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    );
    return MaterialApp(
      // Application name

      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.alphaBlend(Colors.lightGreenAccent, Colors.lightGreenAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/LOGO4.png', height: 150),
            Text(
              "Bienvenue",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/scv.png'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return NewPage2();
                  }));
                },
                child: Text("Go to Next Page")),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.alphaBlend(Colors.lightGreenAccent, Colors.lightGreenAccent),
      body: Center(
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/images/LOGO4.png", height: 45)),
            Text(
              "Connexion",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              //Use of SizedBox
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(
              //Use of SizedBox
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Mot de passe',
                  labelText: 'Mot de passe',
                ),
              ),
            ),
            SizedBox(
              //Use of SizedBox
              height: 35,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Se Connecter'),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), primary: Colors.deepOrange),
            ),
            SizedBox(
              //Use of SizedBox
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Mot de passe oublié'),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), primary: Colors.deepOrange),
            ),
            SizedBox(
              //Use of SizedBox
              height: 30,
            ),
            SizedBox(
                width: 160, // <-- Your width // <-- Your height
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Créer un compte'),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(), primary: Colors.deepOrange),
                )),
            SizedBox(
              //Use of SizedBox
              height: 60,
            ),
            Text(
              "Où se connecter avec",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox.fromSize(
                        size: Size(20, 20), // button width and height

                        child: Material(
                          child: InkWell(
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Image.asset('assets/images/Gmaillogo.png'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox.fromSize(
                        size: Size(22, 22), // button width and height

                        child: Material(
                          child: InkWell(
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Image.asset('assets/images/facebooklogo.png'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
