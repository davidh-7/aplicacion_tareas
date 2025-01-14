import 'package:aplicacion_tareas/Componentes/BtnDialogo.dart';
import 'package:flutter/material.dart';

class Dialogonuta extends StatelessWidget {
  const Dialogonuta({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Container(
        child: Column(
          children: [
            TextField(),
            Row(
              children: [
                //guardar
                Btndialogo(
                  TxtBtn: "Guardar",
                   AcnBtn: (){}),
                //borrar
                Btndialogo(
                  TxtBtn: "Borrar", 
                  AcnBtn: (){}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
