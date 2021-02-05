import 'package:flutter/material.dart';
import 'dart:io';

class BuildTextField extends StatelessWidget {
  final String label;
  final String prefix;
  final TextEditingController c;
  final Function f;

  BuildTextField(this.label, this.prefix, this.c, this.f);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: c,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.amber),
        border: OutlineInputBorder(),
        prefixText: prefix,
      ),
      style: TextStyle(
        color: Colors.amber,
        fontSize: 25,
      ),
      onChanged: f,
      keyboardType: Platform.isIOS
          ? TextInputType.numberWithOptions(decimal: true)
          : TextInputType.number,
    );
  }
}
