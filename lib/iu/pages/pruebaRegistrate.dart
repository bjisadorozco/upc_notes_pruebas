import 'package:flutter/material.dart';
import 'package:upc_notes/iu/pages/prueba.dart';

class RegistratePrueba extends StatefulWidget {
  const RegistratePrueba ({super.key});

  @override
  State<RegistratePrueba> createState() => _RegistratePruebaState();
}

class _RegistratePruebaState extends State<RegistratePrueba> {
  bool _hidePassword = false;
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [           
            Padding(padding: const EdgeInsets.all(0.0),
                child: Image.asset('assets/logo.png', height: 100.0, width: 300,)),
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
              Padding(padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Usuario',
                          contentPadding: EdgeInsets.symmetric(vertical: 6.0),
                          hintText: 'Ingrese usuario'
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
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Correo electronico',
                          contentPadding: EdgeInsets.symmetric(vertical: 6.0),
                          hintText: 'Ingrese correo electronico',
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
                      child: TextFormField(
                        obscureText: _hidePassword,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          hintText: 'Ingrese contraseña',
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
              Padding(padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: TextFormField(
                        obscureText: _showPassword,
                        decoration: InputDecoration(
                          labelText: 'Confirmar contraseña',
                          hintText: 'Ingrese contraseña',
                          suffixIconColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(vertical: 6.0),
                          suffixIcon: IconButton(
                            icon: Icon(_showPassword ? Icons.visibility : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
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
                    },
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Registrate',
                      style: TextStyle(color: Colors.white),
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
                        Navigator.pop(context, MaterialPageRoute(builder: (context) => const Iniciar()));
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