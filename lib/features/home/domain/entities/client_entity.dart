abstract class ClientEntity {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  ClientEntity({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });
}
