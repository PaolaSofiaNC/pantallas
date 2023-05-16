import 'package:isar/isar.dart';
part 'usuario.g.dart';

@collection
class Usuario {
  Id id = Isar.autoIncrement;

  String? nombre;
  String? email;

  Usuario({required this.id, required this.nombre, required this.email});
}
