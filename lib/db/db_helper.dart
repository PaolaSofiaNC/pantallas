import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/usuario.dart';

class DatabaseIsar {
  Future<void> openIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [UsuarioSchema],
      directory: dir.path,
    );
    final users = [
  Usuario(id: 4847847, nombre: "Karla", email: "karla@"),
  Usuario(id: 123456, nombre: "Juan", email: "juan@"),
  Usuario(id: 987654, nombre: "María", email: "maria@"),
];
    await isar.writeTxn(() async {
  for (var user in users) {
    await isar.usuarios.put(user);
  }

     for (var user in users) {
    final existingUser = await isar.usuarios.get(user.id);
    print(existingUser!.nombre);
    print(existingUser!.email);
  }
});

  }
}
