import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(AdivinhacaoApp());
}

class AdivinhacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Adivinhacao(),
    );
  }
}

class Adivinhacao extends StatefulWidget {
  @override
  _AdivinhacaoState createState() => _AdivinhacaoState();
}

class _AdivinhacaoState extends State<Adivinhacao> {
  TextEditingController _controllerPalpite = TextEditingController();
  String _resultado = '';
  late int _numeroAleatorio;

  @override
  void initState() {
    super.initState();
    _gerarNumeroAleatorio();
  }

  void _gerarNumeroAleatorio() {
    var random = Random();
    _numeroAleatorio = random.nextInt(101); // Número entre 0 e 100
  }

  void _adivinhar() {
    int palpite = int.tryParse(_controllerPalpite.text) ?? -1;

    setState(() {
      if (palpite == _numeroAleatorio) {
        _resultado = 'Parabéns! Você acertou!';
      } else if (palpite < _numeroAleatorio) {
        _resultado = 'Tente um número maior.';
      } else {
        _resultado = 'Tente um número menor.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo de Adivinhação'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controllerPalpite,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Seu Palpite'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _adivinhar,
              child: Text('Adivinhar'),
            ),
            SizedBox(height: 16.0),
            Text(
              _resultado,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
