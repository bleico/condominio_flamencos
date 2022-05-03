import 'package:condominio_flamencos/app_bar.dart';
import 'package:condominio_flamencos/info_page.dart';
import 'package:condominio_flamencos/theme.dart';
import 'package:flutter/material.dart';

class AcercaPage extends StatelessWidget {
  const AcercaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppBarWidget(title: 'Acerca de'),
            const SizedBox(height: 20),
            const InfoPage(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'Esta pagina esta creada con la intención de dar a conocer lo que se hace en el Sector los Flamencos, siendo estos tres sectores. Flamencos 1, 2 y 3. De tal manera que la información colocada sea precisa, clara y de fácil comprensión para los residentes.',
                style: textStyleBody,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 240,
              width: 500,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'El objetivo principal es comunicar cualquier problemática o situación actual referente a diversos temas de interés del edificio, entre ellos horarios de racionamiento del agua, reparación de la infraestructura, pagos extra por concepto de mantenimiento o trabajos necesario de incidencias. De esta manera mantener al día la información de los puntos que se plantean en las reuniones a aquellas personas que por algún motivo no puedan asistir a as reuniones convocadas por la Junta de Condominio.',
                style: textStyleBody,
              ),
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
