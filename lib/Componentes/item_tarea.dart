import 'package:flutter/material.dart';

class ItemTarea extends StatelessWidget {
  final String TextoTarea;
  final bool VlCheckBox;

  const ItemTarea(
      {super.key, required this.TextoTarea, required this.VlCheckBox});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              //CheckBox
              Checkbox(
                activeColor: Colors.teal[200],
                checkColor: Colors.orange[200],
                side: BorderSide(
                  color: Colors.orange[200]!,
                  width: 2,
                ),
                value: VlCheckBox,
                onChanged: (valor) {},
              ),
              //Text
              Text(
                TextoTarea,
                style: TextStyle(
                  color: Colors.orange[200],
                  decoration: VlCheckBox ? TextDecoration.lineThrough : TextDecoration.none,
                  decorationColor: Colors.orange[200],
                  decorationThickness: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
