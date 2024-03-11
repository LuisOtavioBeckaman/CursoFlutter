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
          title: Text('Formulário de Contato'),
        ),
        body: ContactForm(),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nome'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, insira seu nome';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'E-mail'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, insira seu e-mail';
                }
                // Você pode adicionar validações de e-mail aqui
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _messageController,
              decoration: InputDecoration(labelText: 'Mensagem'),
              maxLines: 3,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, insira sua mensagem';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Envie o formulário
                  String name = _nameController.text;
                  String email = _emailController.text;
                  String message = _messageController.text;

                  // Exemplo de ação ao enviar o formulário
                  print('Nome: $name, E-mail: $email, Mensagem: $message');
                }
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
