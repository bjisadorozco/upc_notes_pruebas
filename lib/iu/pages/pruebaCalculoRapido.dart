import 'package:flutter/material.dart';

class CalculoRapido extends StatefulWidget {
  const CalculoRapido({super.key});

  @override
  State<CalculoRapido> createState() => _CalculoRapidoState();
}

class _CalculoRapidoState extends State<CalculoRapido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDEE2E6),
        iconTheme: const IconThemeData(
          color: Colors.black, // establece el color del icono en negro
          size: 30.0, // establece el tamaño del icono en 40.0
        ),
        title: const Text(
          "Calculo Rapido",
          style: TextStyle(
            color: Colors.black, 
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 45.0, 10.0, 20.0), 
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                color: const Color(0xFFDEE2E6),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.emoji_events,
                        color: Colors.black,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        "Calificaciones",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Se muestra la nota que debes obtener en el último corte para aprobar la asignatura",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black
                        ),
                  ),
                  ),
                  const SizedBox(height: 12.0),
                   const Divider(
                    color: Colors.black,
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  //const SizedBox(height: 4.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          "Corte 1:",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 100),
                        SizedBox(
                          width: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Nota',
                              border: InputBorder.none,
                            ),
                            style: TextStyle(fontSize: 18),
                          
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "30%",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //const SizedBox(height: 10),
                  const Divider(
                    color: Colors.black,
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          "Corte 2:",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 100),
                        SizedBox(
                          width: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Nota',
                              border: InputBorder.none,
                            ),
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "30%",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //const SizedBox(height: 10),
                  const Divider(
                    color: Colors.black,
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          "Corte 3:",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 100),
                        SizedBox(
                          width: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Nota',
                              border: InputBorder.none,
                            ),
                            style: TextStyle(fontSize: 18),
                          
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "40%",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //const SizedBox(height: 10),
                  const Divider(
                    color: Colors.black,
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child:  Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF7FE1AD),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20), 
                            side: const BorderSide(
                            color: Colors.black,
                            width: 1.0,
                            ), // ajusta el radio según sea necesario
                            ),
                            ),
                            child: const Text('Preguntar', style: TextStyle(
                            color: Colors.black,
                              fontSize: 18,
                            ),),
                          ),
                      ],
                    ),
                  )
                ]
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: const Color(0xFFDEE2E6),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.flag,
                        color: Colors.black,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        "Objetivo",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                    "Se muestra la nota que debes obtener en el último corte para lograr un objetivo",
                    style: TextStyle(
                    fontSize: 12,
                    color: Colors.black
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        "Tu objetivo en definitiva",
                        style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 47),
                        Text(
                          "Para lograrlo en 3 corte",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: const [
                      SizedBox(width: 35),
                      Icon(
                        Icons.flag,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Nota",
                        style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 110),
                      Icon(
                        Icons.event_available,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                        Text(
                          "Nota",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                    color: Colors.black,
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child:  Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF7FE1AD),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20), 
                            side: const BorderSide(
                            color: Colors.black,
                            width: 1.0,
                            ), // ajusta el radio según sea necesario
                            ),
                            ),
                            child: const Text('Editar', style: TextStyle(
                            color: Colors.black,
                              fontSize: 18,
                            ),),
                          ),
                      ],
                    ),
                  )
              ],
            ),
          ),
          ],
        ),
      )
    );
  }
}