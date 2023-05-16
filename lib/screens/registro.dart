import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:pantallas/db/db_insertar.dart';

import '../db/db_helper.dart';
import '../models/usuario.dart';
import 'consultas.dart';

class Registro extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nombreController = TextEditingController();
  TextEditingController correoController = TextEditingController();

  late Usuario newUser;

  @override
  void initState() {
    super.initState();
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
              SizedBox(height: maxHeight * 0.10),
              Container(
                width: maxWidth * 0.9,
                height: maxHeight * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.pink,
                      Color(0xff7000FF),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: nombreController,
                  decoration: const InputDecoration(
                    hintText: 'Ingresa el nombre',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: maxHeight * 0.04),
              Container(
                width: maxWidth * 0.9,
                height: maxHeight * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.pink,
                      Color(0xff7000FF),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: correoController,
                  decoration: const InputDecoration(
                    hintText: 'Ingresa el correo',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: maxHeight * 0.04),
              Container(
                width: maxWidth * 0.9,
                height: maxHeight * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    style: BorderStyle.solid,
                    color: Colors.transparent,
                  ),
                  gradient: const LinearGradient(
                    colors: [Colors.pink, Color(0xFF7000FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    print("entra");
                    DatabaseIsar().openIsar();
                    print(nombreController.text);
                    print(correoController.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Consultas()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: ShaderMask(
                    blendMode: BlendMode.srcATop,
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [Colors.pink, Color(0xff7000FF)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(bounds);
                    },
                    child: const Text(
                      'Guardar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
