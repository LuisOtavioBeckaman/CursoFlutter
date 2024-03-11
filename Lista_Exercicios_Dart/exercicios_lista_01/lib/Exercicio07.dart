import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Lateral'),
        // Adicionando um ícone para abrir o Drawer
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Opções',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Opção 1'),
              onTap: () {
                // Adicione aqui a ação para a Opção 1
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Opção 2'),
              onTap: () {
                // Adicione aqui a ação para a Opção 2
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Opção 3'),
              onTap: () {
                // Adicione aqui a ação para a Opção 3
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Conteúdo Principal',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
