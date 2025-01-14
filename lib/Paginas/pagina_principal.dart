import 'package:aplicacion_tareas/Componentes/DialogoNuTa.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion_tareas/Componentes/item_tarea.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  // Lista de tareas
  List<Map<String, dynamic>> ListaTareas = [
    {"titulo": "Tarea1", "valor": false},
    {"titulo": "Tarea2", "valor": true},
    {"titulo": "Tarea3", "valor": true}
  ];

  // Método para cambiar el estado del checkbox
  void cambiarVlCheckBox(bool? VlCheck, int posLista) {
    setState(() {
      ListaTareas[posLista]["valor"] = !ListaTareas[posLista]["valor"];
    });
  }

  void AcnBorrarTarea(int posLista) {
    setState(() {
      ListaTareas.removeAt(posLista);
    });
  }
  void CrearTarea(){
    showDialog(
      context: context, 
      builder: (context){
        return Dialogonuta();
      },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("App Tareas"),
        foregroundColor: Colors.orange[200],
      ),
      // Floating action button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[300],
        shape: const CircleBorder(),
        onPressed: CrearTarea, //(){
        //   setState(() {
        //     ListaTareas.add({"titulo": "Nueva Tarea", "valor": false});
        //   });
        // },
        child: Icon(
          Icons.add,
          color: Colors.orange[200],
        ),
      ),
      // Body
      body: ListView.builder(
        itemCount: ListaTareas.length,
        itemBuilder: (context, index) {
          return ItemTarea(
            TextoTarea: ListaTareas[index]["titulo"],
            VlCheckBox: ListaTareas[index]["valor"],
            cambiarVlCheckBox: (valor) => cambiarVlCheckBox(valor, index),
            BorrarTarea: (valor) => AcnBorrarTarea(index),
          );
        },
      ),
    );
  }
}
