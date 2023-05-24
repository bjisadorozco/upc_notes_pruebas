import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/domain/controller/controllerEstudiante.dart';
import 'package:upc_notes/iu/pages/pruebaPrincipal.dart';
import 'package:upc_notes/iu/pages/pruebaRegistrate.dart';

class IniciarSesion extends StatefulWidget {
  const IniciarSesion({super.key});

  @override
  State<IniciarSesion> createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  bool _hidePassword = false;
  @override
  Widget build(BuildContext context) {
    ControlEstudiante controle = Get.find();

    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [           
            Padding(padding: const EdgeInsets.all(0.0),
                child: Image.asset('assets/logo.png', height: 100.0, width: 300,)),
                //const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Iniciar Sesion',
                  style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ),
              //const SizedBox(height: 20.0),
              Padding(padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Correo electronico',
                          labelStyle:  TextStyle(color: Colors.black),
                          contentPadding: EdgeInsets.symmetric(vertical: 6.0),
                          hintText: 'Ingrese correo electronico',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Cambiar color de la línea
                          ),
                          focusedBorder: UnderlineInputBorder( //cuando lo selecciono
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ]
                )  
              ),
              Padding(padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        obscureText: _hidePassword,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          labelStyle: const TextStyle(color: Colors.black),
                          hintText: 'Ingrese contraseña',
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Cambiar color de la línea
                          ),
                          focusedBorder: const UnderlineInputBorder( //cuando lo selecciono
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          suffixIconColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(vertical: 6.0),
                          suffixIcon: IconButton(
                            icon: Icon(_hidePassword ? Icons.visibility : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _hidePassword = !_hidePassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ]
                )  
              ),
              //const SizedBox(height: 20.0),
               SizedBox(
                width: 300,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      //Aquí iría la lógica para validar el correo y la contraseña
                      controle
                              .validarEstudiante(email.text, pass.text)
                              .then((value) {
                            if (controle.listaEstudianteLogin!.isEmpty) {
                              Get.snackbar('Usuario', 'Usuario no encontrado',
                                  duration: const Duration(seconds: 2),
                                  icon: const Icon(Icons.info),
                                  shouldIconPulse: true,
                                  backgroundColor: const Color(0xFFDEE2E6));
                            } else {
                              Get.toNamed("/home");
                            }
                          });
                    // Get.toNamed("/home");
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const Principal()));
                    },
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Iniciar Sesion',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                       '¿No tienes una cuenta?',
                      style: TextStyle(color: Colors.white), 
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed("/register");
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistratePrueba()));
                      },
                      child: const Text('Regististrate',
                      style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
          ]    
        ),
      ),
    );
  }
}