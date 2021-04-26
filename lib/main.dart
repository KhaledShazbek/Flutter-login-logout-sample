import 'package:flutter/material.dart';

import './HttpMethods.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Login Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailctrl, passctrl;

  @override
  void initState() {
    super.initState();
    emailctrl = new TextEditingController();
    passctrl = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 280,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(fontSize: 28),
              ),
              TextField(
                controller: emailctrl,
                decoration: InputDecoration(
                  labelText: 'email',
                ),
              ),
              TextField(
                controller: passctrl,
                obscureText: true,
                decoration: InputDecoration(labelText: 'password'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed:() => HttpMethods(context).login(emailctrl.text, passctrl.text), child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
