import 'package:flutter/material.dart';

class HorarioPage extends StatelessWidget {
  const HorarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horario de Seguridad'),
      ),
      body: const Center(child: Text('Horario')),
    );
  }
}
