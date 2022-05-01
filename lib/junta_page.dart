import 'package:condominio_flamencos/app_bar.dart';
import 'package:condominio_flamencos/info_page.dart';
import 'package:flutter/material.dart';

class JuntaPage extends StatelessWidget {
  const JuntaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppBarWidget(title: 'Junta de Condominio'),
            const SizedBox(height: 20),
            const InfoPage(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/condominio.png', height: 80),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Text(
                      'El Condominio del sector Los Flamencos está integrado por los siguientes propietarios:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 10),
                  Propietarios(
                    nombre: 'Andres Marques Edif 13-A-3 ',
                    cargo: 'PRESIDENTE',
                  ),
                  SizedBox(height: 10),
                  Propietarios(
                    nombre: 'Carlos Putrini Edif 12-C-PB ',
                    cargo: 'VICE-PRESIDENTE',
                  ),
                  SizedBox(height: 10),
                  Propietarios(
                    nombre: 'Emiliana Zapata Edif 1-C-3 ',
                    cargo: 'TESORERA',
                  ),
                  SizedBox(height: 10),
                  Propietarios(
                    nombre: 'Angelica Melean Edif 7-D-PB ',
                    cargo: 'SECRETARIA',
                  ),
                  SizedBox(height: 10),
                  Propietarios(
                    nombre: 'Mayra Santiago Edif 2-D-PB ',
                    cargo: 'VOCAL I',
                  ),
                  SizedBox(height: 10),
                  Propietarios(
                    nombre: 'Miriam de Martinez Edif 6-C-PB ',
                    cargo: 'VOCAL II',
                  ),
                  SizedBox(height: 10),
                  Propietarios(
                    nombre: 'Rosalia Quntiero Edif 2-B-PB ',
                    cargo: 'VOCAL III',
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.80,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/images/junta1.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.80,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/images/junta2.png'),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 20,
        color: Colors.blue[200],
      ),
    );
  }
}

class Propietarios extends StatelessWidget {
  final String nombre;
  final String cargo;
  const Propietarios({
    Key? key,
    required this.nombre,
    required this.cargo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          fontSize: 18,
        ),
        children: [
          const WidgetSpan(
            child: Icon(
              Icons.check,
              size: 25,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: nombre,
          ),
          TextSpan(
            text: cargo,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
