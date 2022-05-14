import 'package:beamer/beamer.dart';
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
              const InfoPage(),
/*                 Image.asset(
                  'assets/images/problema.png',
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.25,
                ), */

              Column(
                children: [
                  GestureDetector(
                    onTap: () => context.beamToNamed(
                      '/images',
                      data: {'image': 'assets/images/home.png'},
                    ),
                    child: Hero(
                      tag: 'image/assets/images/home.png',
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.35,
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
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  /** Desde Aqui */
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Servicio de Seguridad',
                            style: textStyleTitle,
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.security),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Servicio de Aseo',
                            style: textStyleTitle,
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.restore_from_trash),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          ContentImage(img: 'assets/images/puerta.png'),
                          ContentImage(img: 'assets/images/basura.png'),
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
                          ContentText(
                            texto:
                                'Ademas, otro problema es el tema de la basura acumulada, que se acumula en la zona de la puerta principal. Se informará a cada líder de edif el costo del mantenimiento de zonas verdes por apto.',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Servicio de Jardineria',
                            style: textStyleTitle,
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cut),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Servicio de Jardineria 2',
                            style: textStyleTitle,
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cut),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          ContentImage(img: 'assets/images/cesped1.png'),
                          ContentImage(img: 'assets/images/cesped2.png'),
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
                          ContentText(
                            texto:
                                'Otro problema son las áreas verdes. La Junta de condominio busco al Señor Julio para que se encargue de la limpieza del césped. Se informará a cada líder de edif el costo del mantenimiento de zonas verdes por apto.',
                          ),
                        ],
                      ),
                    ],
                  ),

                  /**Hasta aqui */
                  const SizedBox(width: 20),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 10,
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
    return GestureDetector(
      onTap: () => context.beamToNamed('/images', data: {'image': img}),
      child: Hero(
        key: key,
        tag: 'imageHero$img',
        child: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.20,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                img,
                //   height: 200,
                //   width: 200,
              ).image,
            ),
          ),
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
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
