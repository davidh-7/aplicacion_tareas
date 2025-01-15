import 'package:flutter/material.dart';

class Btndialogo extends StatelessWidget {
  final String TxtBtn;
  final Function()? AcnBtn;

  const Btndialogo({super.key, required this.TxtBtn, required this.AcnBtn});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: AcnBtn,
      color: Colors.teal[200],
      child: Text(TxtBtn),
    );
  }
}
