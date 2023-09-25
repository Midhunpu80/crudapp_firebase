import 'package:flutter/material.dart';

Widget textfiled({var hint, required TextEditingController con}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: con,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.title),
          hintText: hint,
          border: OutlineInputBorder()),
    ),
  );
}
