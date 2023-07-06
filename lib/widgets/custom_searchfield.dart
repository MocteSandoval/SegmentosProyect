import 'package:flutter/material.dart';
class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, left: 20),
        child: Row(
          children: [
            Expanded(
              child: searchField('Cliente'),
            ),
            
            Expanded(
                child: searchField('Producto'),),
          ],
        ));
  }

 

  Widget searchField(String type) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Buscar $type',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}