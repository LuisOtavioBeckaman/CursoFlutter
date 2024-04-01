class AnimalController {
  //atributo
  List <Animal> _listAnimal = [];

  //Get da Lista
  List get listarAnimais => _listAnimal;

  //Adicionar um Animal
  void adicionalAnimal(String especie, String urlFoto, String urlAudio) {
    Animal novoAnimal = Animal(especie, urlFoto, urlAudio);
    _listAnimal.add(novoAnimal);

  }
}
