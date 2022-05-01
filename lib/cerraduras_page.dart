import 'package:flutter/material.dart';

class CerradurasPage extends StatelessWidget {
  const CerradurasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reemplazo de cerraduras'),
      ),
      body: const Center(child: Text('Horario')),
    );
  }
}
