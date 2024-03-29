import 'package:app_lista01/TarefaModel.dart';
import 'package:flutter/material.dart';

class ListaTarefasController extends ChangeNotifier {
  List<Tarefa> _tarefas = [];

  List<Tarefa> get Tarefas => _tarefas;

//Métodos CRUD

void adicionarTarefa(String descricao) {
    _tarefas.add(Tarefa(descricao, false));
  notifyListeners();
}  

void marcarComoConcluida (int indice) {
  if (indice >= 0 && indice < _tarefas.length){
    _tarefas[indice].concluida = true;
    notifyListeners();
  }
}

void excluirTarefa (int indice) {
  if (indice >= 0 && indice < _tarefas.length){
    _tarefas.removeAt(indice);
    notifyListeners();
  }
}

}