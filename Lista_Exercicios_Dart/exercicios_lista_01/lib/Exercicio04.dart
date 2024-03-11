import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Número de abas
        child: Scaffold(
          appBar: AppBar(
            title: Text('Barra de Navegação Personalizada'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Início'),
                Tab(icon: Icon(Icons.search), text: 'Buscar'),
                Tab(icon: Icon(Icons.person), text: 'Perfil'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Conteúdo da primeira aba (Início)
              Center(
                child: Text('Conteúdo da aba Início'),
              ),
              // Conteúdo da segunda aba (Buscar)
              Center(
                child: Text('Conteúdo da aba Buscar'),
              ),
              // Conteúdo da terceira aba (Perfil)
              Center(
                child: Text('Conteúdo da aba Perfil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
