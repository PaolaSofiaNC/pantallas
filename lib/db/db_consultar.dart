import 'package:isar/isar.dart';

import '../models/usuario.dart';

class Consultar {
  Future<void> insertarUsuario(Isar isar, Usuario newUser) async {
    final existingUser = await isar.usuarios.get(newUser.id);
  }
}

