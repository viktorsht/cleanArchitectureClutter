class UserDto {
  UserDto({this.id, this.name, this.telefone, this.nascimento, this.email});
  final String? id;
  final String? name;
  final String? telefone;
  final String? nascimento;
  final String? email;

  factory UserDto.fromMap(Map<String, dynamic> map) => UserDto(
    id: map['id'],
    name: map['name'], 
    telefone: map['telefone'], 
    nascimento: map['nascimento'], 
    email: map['email'],
  );

  Map<String, dynamic> toMap() => {
    "id" : id, 
    "name" : name, 
    "telefone" : telefone, 
    "nascimento" : nascimento, 
    "email" : email
  };
}