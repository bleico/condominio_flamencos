import 'package:condominio_flamencos/app_bar.dart';
import 'package:condominio_flamencos/info_page.dart';
import 'package:condominio_flamencos/theme.dart';
import 'package:flutter/material.dart';

class NorificacionesPage extends StatelessWidget {
  const NorificacionesPage({Key? key}) : super(key: key);

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
              const AppBarWidget(title: 'NOTIFICACIONES'),
              const SizedBox(height: 20),
              const InfoPage(),
/*                 Image.asset(
                  'assets/images/problema.png',
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.25,
                ), */

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Servicio de Seguridad',
                    style: textStyleTitle,
                    textAlign: TextAlign.center,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.security)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ContentImage(img: 'assets/images/puerta.png'),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ContentText(
                        texto:
                            'Unos de los problemas actuales es el portón, el cual se ha vuelto a dañar. Debido a que los vecinos por flojera abre el portón para uso peatonal en vez de entrar por la puerta principal.',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Servicio de Jardineria',
                    style: textStyleTitle,
                    textAlign: TextAlign.center,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.stroller)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ContentImage(img: 'assets/images/cesped2.png'),
                      ContentImage(img: 'assets/images/cesped1.png'),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ContentText(
                        texto:
                            'Otro problema son las áreas verdes. La Junta de condominio busco al Señor Julio para que se encargue de la limpieza del césped. Se informará a cada líder de edif el costo del mantenimiento de zonas verdes por apto.',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Servicio de Aseo',
                    style: textStyleTitle,
                    textAlign: TextAlign.center,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.recycling)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ContentImage(img: 'assets/images/basura.png'),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ContentText(
                        texto:
                            'Ademas, otro problema es el tema de la basura acumulada, que se acumula en la zona de la puerta principal. Se informará a cada líder de edif el costo del mantenimiento de zonas verdes por apto.',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),
/*               ContentProblema(
                texto:
                    'Unos de los problemas actuales es el portón, el cual se ha vuelto a dañar. Debido a que los vecinos por flojera abre el portón para uso peatonal en vez de entrar por la puerta principal.',
                img: 'assets/images/puerta.png',
              ),
              SizedBox(height: 20),
              ContentProblema(
                texto:
                    'Otro problema son las áreas verdes. La Junta de condominio busco al Señor Julio para que se encargue de la limpieza del césped. Se informará a cada líder de edif el costo del mantenimiento de zonas verdes por apto.',
                img: 'assets/images/cesped2.png',
              ),
              SizedBox(height: 20),
              ContentProblema(
                texto:
                    'Otro problema son las áreas verdes. La Junta de condominio busco al Señor Julio para que se encargue de la limpieza del césped. Se informará a cada líder de edif el costo del mantenimiento de zonas verdes por apto.',
                img: 'assets/images/cesped1.png',
              ),
              SizedBox(height: 20),
              ContentProblema(
                texto:
                    'Ademas, otro problema es el tema de la basura acumulada, que se acumula en la zona de la puerta principal. Se informará a cada líder de edif el costo del mantenimiento de zonas verdes por apto.',
                img: 'assets/images/basura.png',
              ), */
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

class ContentImage extends StatelessWidget {
  const ContentImage({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      width: MediaQuery.of(context).size.width * 0.40,
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.045,
        top: 20,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        ),
      ),
    );
  }
}

class ContentText extends StatelessWidget {
  const ContentText({
    Key? key,
    required this.texto,
  }) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.2),
        padding: const EdgeInsets.all(8.0),
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
