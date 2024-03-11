class Animal {

  //atributos
  String _especie;
  String _urlFoto;
  String _urlAudio;

  //métodos
  //Construtor

  Animal(String especie, String urlFoto, String urlAudio) {
    this._especie = especie;
    this._urlFoto = urlFoto;
    this._urlAudio = urlAudio;
  }  

  String get especie => _especie;
  String get urlFoto => _urlFoto;
  String get urlAudio => _urlAudio;
  
  set especie(String especie) {
     this._especie = especie;
}
set urlFoto(String urlFoto) {
     this._urlFoto = urlFoto;
}
set urlAudio(String urlAudio) {
     this._urlAudio = urlAudio;
}
}