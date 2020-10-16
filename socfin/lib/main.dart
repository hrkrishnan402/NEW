import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/IMG.jpg'),
          Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  hintText: 'example@email.com',
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.mail),
                  contentPadding: EdgeInsets.fromLTRB(40.0, 2.0, 40.0, 2.0),
                ),
              ),
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.fromLTRB(20.0, 100.0, 50.0, 40.0)),
          Container(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  hintText: 'Password',
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  contentPadding: EdgeInsets.fromLTRB(40.0, 2.0, 40.0, 2.0),
                ),
              ),
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 50.0, 40.0)),
          Container(
            margin: EdgeInsets.fromLTRB(50.0, 20.0, 70.0, 40.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF1B5E20),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {},
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
