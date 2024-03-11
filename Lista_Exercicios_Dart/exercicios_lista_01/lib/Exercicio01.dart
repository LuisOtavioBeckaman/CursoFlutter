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
          title: Text('Container Example'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 230, // Altura ajustada para acomodar os containers
            color: const Color.fromARGB(255, 0, 0, 0),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 50,
                  color: Color.fromARGB(255, 255, 0, 0),
                  child: Center(
                    child: Text(
                      'Container 01',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espaço entre os containers
                Container(
                  width: 150,
                  height: 50,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Container 02',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espaço entre os containers
                Container(
                  width: 150,
                  height: 50,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'Container 03',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
