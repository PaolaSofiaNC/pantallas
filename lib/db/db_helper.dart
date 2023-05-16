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
  }
}
