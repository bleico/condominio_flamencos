import 'package:condominio_flamencos/app_bar.dart';
import 'package:condominio_flamencos/info_page.dart';
import 'package:condominio_flamencos/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              const AppBarWidget(title: 'CONDOMINIO LOS FLAMENCOS'),
              const SizedBox(height: 20),
              const InfoPage(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Image.asset(
                      'assets/images/condominio.png',
                      height: 80,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                        'En esta página encontrarás toda información referente al sector los flamencos. Además podrás estar enterado de los acontecimientos actuales como beneficio la Urb. El Marques, información de áreas verdes, entre otras….',
                        textAlign: TextAlign.justify,
                        style: textStyleBody,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.blue,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.white,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/home3.png'),
                        alignment: Alignment.bottomCenter,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Información al sector',
                        style: textStyleTitle,
                      ),
                      Text(
                        'Reglas y Normas',
                        style: textStyleTitle,
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'Condominio es el derecho real de propiedad sobre una cosa que pertenece en común a varias personas y que corresponde a cada una por una parte indivisa. Las partes de los condóminosse presumen iguales, excepto que la ley o el título dispongan otra proporción.',
                          style: textStyleBody,
                          maxLines: 4,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Condominio es el derecho real de propiedad sobre una cosa que pertenece en común a varias personas y que corresponde a cada una por una parte indivisa. Las partes de los condóminosse presumen iguales, excepto que la ley o el título dispongan otra proporción.',
                          style: textStyleBody,
                          maxLines: 4,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Reuniones',
                        style: textStyleTitle,
                      ),
                      Text(
                        'Pago de Condominio',
                        style: textStyleTitle,
                      ),
                    ],
                  ),
                ],
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
