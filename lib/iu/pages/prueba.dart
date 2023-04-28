import 'package:flutter/material.dart';
import 'package:upc_notes/iu/pages/pruebaPrincipal.dart';
import 'package:upc_notes/iu/pages/pruebaRegistrate.dart';

class Iniciar extends StatefulWidget {
  const Iniciar({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _IniciarState createState() => _IniciarState();
}

class _IniciarState extends State<Iniciar> {
  bool _hidePassword = false;

  @override
  Widget build(BuildContext context) {
    double fieldWidth = MediaQuery.of(context).size.width - 16.0 * 2;

    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset('assets/logo.png', height: 100.0, width: 300,),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ),
              //const SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      //width: fieldWidth,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Correo electrónico',
                          labelStyle: const TextStyle(color: Colors.black),
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          hintText: 'Ingrese correo electronico',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Cambiar color de la línea
                          ),
                          focusedBorder: UnderlineInputBorder( //cuando lo selecciono
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          suffixIconColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      //width: fieldWidth,
                      child: TextFormField(
                        obscureText: _hidePassword,
                        //obscureText: !_showPassword,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          labelStyle: const TextStyle(color: Colors.black),
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          hintText: 'Ingrese contraseña',
                          //floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Cambiar color de la línea
                          ),
                          focusedBorder: const UnderlineInputBorder( //cuando lo selecciono
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          //contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                          //hintText: 'Ingrese contraseña',
                          suffixIconColor: Colors.white,
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
                  ],
                ),
              ),
              SizedBox(
                //width: fieldWidth,
                width: 300,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Aquí iría la lógica para validar el correo y la contraseña
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Principal()));
                    },
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ),
               const SizedBox(height: 0.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: const Text('¿Olvidó su contraseña?',
                      style: TextStyle(color: Colors.white)), 
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistratePrueba()));
                      },
                      child: const Text('Regístrate',
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
