import 'package:aplicacion_tareas/Componentes/BtnDialogo.dart';
import 'package:flutter/material.dart';

class Dialogonuta extends StatelessWidget {
  final TextEditingController tecTxtTarea;
  final Function()? AcnGuardar;
  final Function()? AcnCancelar;

  const Dialogonuta(
      {super.key,
      required this.tecTxtTarea,
      required this.AcnGuardar,
      required this.AcnCancelar});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: tecTxtTarea,
              cursorColor: Colors.orange[300],
              decoration: InputDecoration(
                hintText: "Escribe la Tarea...",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.teal[100],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //guardar
                Btndialogo(TxtBtn: "Guardar", AcnBtn: AcnGuardar),
                //borrar
                Btndialogo(TxtBtn: "Cancelar", AcnBtn: AcnCancelar),
              ],
            )
          ],
        ),
      ),
    );
  }
}
