import 'package:isar/isar.dart';
import 'package:pantallas/models/usuario.dart';

class dbInsertar {
   final isar = Isar.getInstance();
  Future<void> insertarUsuario(Usuario newUser) async {
    await isar!.writeTxn(() async {
      await isar!.usuarios.put(newUser);
    });
  }
}
