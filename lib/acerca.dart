import 'package:condominio_flamencos/app_bar.dart';
import 'package:condominio_flamencos/info_page.dart';
import 'package:condominio_flamencos/theme.dart';
import 'package:flutter/material.dart';

class AcercaPage extends StatelessWidget {
  const AcercaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppBarWidget(title: 'ACERCA DE'),
              const SizedBox(height: 20),
              const InfoPage(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // const ContactWidget(),
                  Expanded(
                    child: Image.asset(
                      'assets/images/condominio1.png',
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.height * 0.85,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.35,
                          right: MediaQuery.of(context).size.width * 0.32),
                      child: const Text(
                        'El objetivo principal de este blog es brindar una herramienta informativa de facil comprension para los residentes del sector Los Flamencos, asi como tambien comunicar cualquier problematica o situacion actual referente a diversos temas de interes del sector, entre ellos: horarios de racionamiento de agua, reparaciones de la insfractructura, pagos extra por concepto de mantenimiento o trabajos necesarios de incidentes que ocurran. De esta manera mantendra al dia la informacion de los puntos que se planteen en la reuniones a aquellas personas que por algun motivo no puedan asistir a las reuniones convocadas por la Junta.',
                        style: textStyleBody,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  )
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
