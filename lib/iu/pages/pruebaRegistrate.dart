import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/domain/controller/controllerEstudiante.dart';
import 'package:upc_notes/iu/pages/pruebaIniciarSesion.dart';

class RegistratePrueba extends StatefulWidget {
  const RegistratePrueba ({super.key});

  @override
  State<RegistratePrueba> createState() => _RegistratePruebaState();
}

class _RegistratePruebaState extends State<RegistratePrueba> {
  final _hidePassword = true.obs;
  final _showPassword = true.obs;

  @override
  Widget build(BuildContext context) {
    ControlEstudiante controle = Get.find();
    TextEditingController usuario = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    TextEditingController passc = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [           
            Padding(padding: const EdgeInsets.all(0.0),
                child: Image.asset('assets/logo.png', height: 100.0, width: 300,)),
                //const SizedBox(height: 5.0),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Registrate',
                  style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ),
              //const SizedBox(height: 5.0),
              Padding(padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: usuario,
                        decoration: const InputDecoration(
                          labelText: 'Usuario',
                          labelStyle: TextStyle(color: Colors.black),
                          contentPadding: EdgeInsets.symmetric(vertical: 6.0),
                          hintText: 'Ingrese usuario',
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
                        controller: email,
                        decoration: const InputDecoration(
                          labelText: 'Correo electronico',
                          labelStyle: TextStyle(color: Colors.black),
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
                      child: Obx(() =>TextFormField(
                        
                        controller: pass,
                        obscureText: _hidePassword.value,
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
                          suffixIcon: Obx(() => IconButton(
                              key: UniqueKey(),
                              icon: Icon(_hidePassword.value ? Icons.visibility : Icons.visibility_off),
                              onPressed: () {
                              _hidePassword.value= !_hidePassword.value;      
                              },
                              //color: Colors.white, // Cambiar el color del icono
                            ),
                        ),
                        ),
                      ),
                      )
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
                        controller: passc,
                        obscureText: _showPassword.value,
                        decoration: InputDecoration(
                          labelText: 'Confirmar contraseña',
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
                          suffixIcon: Obx(() => IconButton(
                              key: UniqueKey(),
                              icon: Icon(_showPassword.value ? Icons.visibility : Icons.visibility_off),
                              onPressed: () {
                                  _showPassword.value = !_showPassword.value;
                              },
                              //color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
                )  
              ),
              SizedBox(
                width: 300,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Aquí iría la lógica para validar el correo y la contraseña
                      if(pass.text == passc.text){
                          controle.crearEstudiante(usuario.text, email.text, pass.text).then((value) => {
                          Get.snackbar(
                                  'Estudiante', controle.listaMensajes![0].mensaje,
                                  duration: const Duration(seconds: 2),
                                  icon: const Icon(Icons.info),
                                  shouldIconPulse: true,
                                  backgroundColor: const Color(0xFFDEE2E6))
                        });
                        }else{
                          Get.snackbar(
                                  'Error', 'Las contraseñas no coinciden',
                                  duration: const Duration(seconds: 2),
                                  icon: const Icon(Icons.info),
                                  shouldIconPulse: true,
                                  backgroundColor: const Color(0xFFDEE2E6));
                        }
                    },
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Registrate',
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
                       '¿Ya tienes una cuenta?',
                      style: TextStyle(color: Colors.white), 
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed("/login");
                        //Navigator.pop(context, MaterialPageRoute(builder: (context) => const IniciarSesion()));
                      },
                      child: const Text('Iniciar Sesion',
                      style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}