import 'package:aplicacion_tareas/Componentes/item_tarea.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  List ListaTareas = [
    {"titulo": "Tarea1", "valor": false},
    {"titulo": "Tarea2", "valor": true}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("App Tareas"),
        foregroundColor: Colors.orange[200],
      ),
      //Floating action button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[300],
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.orange[200],
        ),
      ),
      //Body
      body: ListView.builder(
        itemCount: ListaTareas.length,
        itemBuilder: (context, index) {
          return ItemTarea(
              TextoTarea: ListaTareas[index]["titulo"].toString(), VlCheckBox: ListaTareas[index]["valor"]);
        },
      ),
    );
  }
}
