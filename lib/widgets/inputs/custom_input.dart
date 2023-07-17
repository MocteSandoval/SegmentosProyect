import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        
      ),
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: 'Nombre del producto',
          hintText: 'Nombre del producto',
          suffixIcon: Icon(Icons.add),
      
        ),
      ),
    );
  }
}