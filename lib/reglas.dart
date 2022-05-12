import 'package:condominio_flamencos/app_bar.dart';
import 'package:condominio_flamencos/info_page.dart';
import 'package:flutter/material.dart';

class ReglasPage extends StatelessWidget {
  const ReglasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: const <Widget>[
              AppBarWidget(title: 'REGLAS DEL CONDOMINIO'),
              SizedBox(height: 20),
              InfoPage(),
            ],
          );
        },
      ),
    );
  }
}
