import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Organização Vertical:', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons.star, size: 50, color: Colors.yellow),
                      Text('Estrela', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Image.network(
                        'https://www.google.com/url?sa=i&url=https%3A%2F%2Flogosvg.com.br%2Flogo%2Fsenai-165&psig=AOvVaw1k3JIm9jOKYg4MxKkZZUwk&ust=1710263416655000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCPiDw_fZ7IQDFQAAAAAdAAAAABAY',
                      ),
                      Text('Logo Senai', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text('Organização Horizontal:', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.airplay, size: 50, color: Colors.blue),
                      SizedBox(width: 20),
                      Text('Avião', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.train, size: 50, color: Colors.green),
                      SizedBox(width: 20),
                      Text('Trem', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
