import 'package:condominio_flamencos/app_bar.dart';
import 'package:condominio_flamencos/info_page.dart';
import 'package:condominio_flamencos/theme.dart';
import 'package:flutter/material.dart';

class JuntaPage extends StatelessWidget {
  const JuntaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppBarWidget(title: 'ESTRUCTURA DEL CONDOMINIO'),
              const SizedBox(height: 20),
              const InfoPage(),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.2,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/junta_logo.png', height: 80),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'El Condominio del sector Los Flamencos está integrado por los siguientes propietarios:',
                        style: textStyleTitle,
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
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 60,
                  top: 60,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ContactWidget(),
                  ],
                ),
              ),
            ],
          );
        },
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
            style: textStyleBody,
          ),
          TextSpan(
            text: cargo,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 240,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 400),
        decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.orange[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/contacto.png',
                height: 80,
              ),
            ),
            Expanded(
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  Expanded(
                    child: Text(
                      'Contacto:',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Guatire, El Marques, sector Los Flamencos.",
                      style: textStyleBody,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Jefe de condominio: Andrés Eloy Márquez García",
                      style: textStyleBody,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Correo: condominiolosflamencos@hotmail.com",
                      style: textStyleBody,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Telf. (0414) 2277520",
                      style: textStyleBody,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Horario 8:00 am - 7:00m",
                      style: textStyleBody,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
