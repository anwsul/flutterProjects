import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Cars'),
            backgroundColor: Colors.orange,
          ),
          body: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      CarWidget("Bmw", "M3", "assets/1.avif"),
      CarWidget("Nissan", "GTR", "assets/2.avif"),
      CarWidget("Nissan", "Sentra", "assets/3.avif"),
    ]));
  }
}

class CarWidget extends StatelessWidget {
  CarWidget(this.make, this.model, this.imageSrc) : super();
  final String make;
  final String model;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(80.0),
        child: Center(
            child: Container(
                decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(20.0),
                child: Column(children: <Widget>[
                  Text('$make $model', style: TextStyle(fontSize: 24.0)),
                  Image.asset(imageSrc)
                ]))));
  }
}
