import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../models/usuario.dart';

class Consultas extends StatefulWidget {
  @override
  State<Consultas> createState() => _ConsultasState();
}

class _ConsultasState extends State<Consultas> {
  List<Usuario> existingUsers = [
    Usuario(id: 6748, nombre: "Abril", email: "Abril@gmail.com")
  ];

  @override
  void initState() {
    super.initState();
    _getDatosCliente();
  }

Future<void> _getDatosCliente() async {
  print("Obteniendo Datos");
  
  final isar = Isar.getInstance();
  
  final users = isar?.usuarios.filter();
  
  setState(() {
    if (users != null){
      existingUsers = users as List<Usuario>;
    }
  });
}

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: maxHeight,
          width: maxWidth,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pink,
                Color(0xff7000FF),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: existingUsers.length,
                  itemBuilder: (context, index) {
                    final user = existingUsers[index];
                    return ListTile(
                      title: Text(user.nombre.toString()), 
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
