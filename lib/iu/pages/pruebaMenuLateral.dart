import 'package:flutter/material.dart';
import 'package:upc_notes/iu/pages/pruebaApuntes.dart';
import 'package:upc_notes/iu/pages/pruebaCalculoRapido.dart';
import 'package:upc_notes/iu/pages/pruebaIniciarSesion.dart';
import 'package:upc_notes/iu/pages/pruebaListaApuntes.dart';
import 'package:upc_notes/iu/pages/pruebaListarAsignatura.dart';
import 'package:upc_notes/iu/pages/pruebaPrincipal.dart';
import 'package:upc_notes/iu/pages/registrarProfesores.dart';

import 'PruebaListaProfesores.dart';
import 'PruebaRegistrarProfesores.dart';
import 'pruebaRegistrarAsignatura.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFFDEE2E6),
      child: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  UserAccountsDrawerHeader(accountName: Text ("Username",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),), 
                  accountEmail: Text ("username@unicesar.edu.co", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                  currentAccountPicture: 
                         CircleAvatar(
                          //backgroundImage: AssetImage('assets/discord.png'),
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9mpGaPj4GHfJJJcUZYVgGl4OyVaz5mGBUNSg0hWskER0WlUt2e0dCF6VtQRZfXenIz2Q&usqp=CAU',
                            ),
                            ),    
                  decoration: BoxDecoration(
                    color: Color(0xFFDEE2E6),
                  ),
                  ),
                  //  Divider(
                  //   color: Colors.black, // color de la línea
                  //   height: 1, // altura de la línea
                  //   thickness: 1, // grosor de la línea
                  // ),
                ],
              ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Inicio"),
                onTap:() => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Principal()),
                  ),
                },
                iconColor: Colors.black,
                //tileColor: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.watch_later_outlined),
                title: Text("Horario"),
                onTap:() => null,
                iconColor: Colors.black,
                //tileColor: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.import_contacts),
                title: Text("Asignaturas"),
                onTap:() => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegistrarAsignaturas()),
                  ),
                },
                iconColor: Colors.black,
                //tileColor: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.people_alt),
                title: Text("Profesores"),
                onTap:() => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegistroDocentes()),
                  ),
                },
                iconColor: Colors.black,
                //tileColor: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.calculate),
                title: Text("Calculo rapido"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CalculoRapido()),
                  );
                },
                iconColor: Colors.black,
                //tileColor: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.content_paste),
                title: Text("Apuntes"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Apuntes()),
                  );
                },
                iconColor: Colors.black,
                //tileColor: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Salir"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IniciarSesion()),
                  );
                },
                iconColor: Colors.black,
                //tileColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}