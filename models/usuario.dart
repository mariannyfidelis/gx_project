
class Usuario{

  late String idUsuario;
  late String nome;
  late String email;
  late String urlImagem;
  late String tipoUsuario;
  late bool ativo;

  Usuario(this.idUsuario, this.nome, this.email, {this.urlImagem="", this.tipoUsuario="client", this.ativo=true});

  Usuario.fromMap(Map<String, dynamic> user){
    this.idUsuario = user["idUsuario"];
    this.nome = user["nome"];
    this.email =user["email"];
    this.urlImagem = user["urlImagem"];
    this.tipoUsuario = user["tipoUsuario"];
    this.ativo = user["ativo"];
  }

  Map<String, dynamic> toMap() {

    Map<String, dynamic> map = {
      "idUsuario": this.idUsuario,
      "nome":  this.nome,
      "email": this.email,
      "urlImagem": this.urlImagem,
      "tipoUsuario": this.tipoUsuario,
      "ativo": this.ativo
    };

    return map;
  }
}