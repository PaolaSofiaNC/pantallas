import 'package:isar/isar.dart';
import 'package:pantallas/models/usuario.dart';

class dbInsertar {
  Future<void> insertarUsuario(Isar isar, Usuario newUser) async {
    await isar.writeTxn(() async {
      await isar.usuarios.put(newUser);
    });
  }
}
