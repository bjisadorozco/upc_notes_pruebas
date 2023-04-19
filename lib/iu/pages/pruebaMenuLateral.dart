import 'package:flutter/material.dart';
import 'package:upc_notes/iu/pages/pruebaApuntes.dart';
import 'package:upc_notes/iu/pages/pruebaCalculoRapido.dart';

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
                          //backgroundImage: AssetImage('assets/usuario.png'),
                           backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmtMFSevZVhfvwhiimXwcKSAYU2YELXo_mrw&usqp=CAU',
                             ),
                            ),    
                  decoration: BoxDecoration(
                    color: Color(0xFFDEE2E6),
                  ),
                  ),
                ],
              ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Inicio"),
                onTap:() => null,
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
                onTap:() => null,
                iconColor: Colors.black,
                //tileColor: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.people_alt),
                title: Text("Profesores"),
                onTap:() => null,
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
          ],
        ),
      ),
    );
  }
}