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
          title: Text('ListView Example'),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 3,
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text((index + 1).toString()),
                ),
                title: Text('Item ${index + 1}'),
                subtitle: Text('Descrição do item ${index + 1}'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Ação ao clicar no item
                  print('Clicou no item ${index + 1}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
