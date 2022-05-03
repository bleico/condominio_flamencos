import 'package:beamer/beamer.dart';
import 'package:condominio_flamencos/acerca.dart';
import 'package:condominio_flamencos/app_bar.dart';
import 'package:condominio_flamencos/info_page.dart';
import 'package:condominio_flamencos/junta_page.dart';
import 'package:condominio_flamencos/problemas_page.dart';
import 'package:condominio_flamencos/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/': (context, state, data) {
          return const BeamPage(
            title: 'Condominio Los Flamencos',
            key: ValueKey('condominio'),
            type: BeamPageType.fadeTransition,
            child: MyHomePage(
              title: 'Condominio Los Flamencos',
            ),
          );
        },
        '/acerca': (context, state, data) {
          return const BeamPage(
            title: 'Acerca de',
            key: ValueKey('acerca'),
            type: BeamPageType.fadeTransition,
            child: AcercaPage(),
          );
        },
        '/junta': (context, state, data) {
          return const BeamPage(
            key: ValueKey('junta'),
            title: 'Junta de Condominio',
            type: BeamPageType.fadeTransition,
            child: JuntaPage(),
          );
        },
        '/problemas': (context, state, data) {
          return const BeamPage(
            key: ValueKey('problemas'),
            type: BeamPageType.fadeTransition,
            title: 'Problemas',
            child: ProblemasPage(),
          );
        },
      },
    ),
  );

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'Condominio Los Flamencos',
      theme: ThemeData(
        primaryColor: const MaterialColor(0xff64b5f6, {
          50: Color(0xff64b5f6),
          100: Color(0xff64b5f6),
          200: Color(0xff64b5f6),
          300: Color(0xff64b5f6),
          400: Color(0xff64b5f6),
          500: Color(0xff64b5f6),
          600: Color(0xff64b5f6),
          700: Color(0xff64b5f6),
          800: Color(0xff64b5f6),
          900: Color(0xff64b5f6),
        }),
        primaryColorLight: const MaterialColor(0xff80d6ff, {
          50: Color(0xff80d6ff),
          100: Color(0xff80d6ff),
          200: Color(0xff80d6ff),
          300: Color(0xff80d6ff),
          400: Color(0xff80d6ff),
          500: Color(0xff80d6ff),
          600: Color(0xff80d6ff),
          700: Color(0xff80d6ff),
          800: Color(0xff80d6ff),
          900: Color(0xff80d6ff),
        }),
        primaryColorDark: const MaterialColor(0xff90a4ae, {
          50: Color(0xff90a4ae),
          100: Color(0xff90a4ae),
          200: Color(0xff90a4ae),
          300: Color(0xff90a4ae),
          400: Color(0xff90a4ae),
          500: Color(0xff90a4ae),
          600: Color(0xff90a4ae),
          700: Color(0xff90a4ae),
          800: Color(0xff90a4ae),
          900: Color(0xff90a4ae),
        }),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Theme.of(context).primaryColor),
        appBarTheme: AppBarTheme(color: Theme.of(context).primaryColor),
        primaryTextTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: Column(
          children: [
            AppBarWidget(title: widget.title),
            const SizedBox(height: 20),
            const InfoPage(),
            const SizedBox(height: 20),
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
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: const Text(
                      'En esta página encontrarás toda información referente al sector los flamencos. Además podrás estar enterado de los acontecimientos actuales como beneficio la Urb. El Marques, información de áreas verdes, entre otras….',
                      textAlign: TextAlign.justify,
                      style: textStyleBody,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Container(
                  height: 200,
                  width: 900,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/home.jpg'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Información del sector',
                  style: textStyleTitle,
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  child: Text(
                    'Las edificaciones constituyen el escenario fundamental de las actividades humanas, a la vez que son grandes consumidoras de energía. Según estadísticas internacionales, alrededor del 40% de la energía total consumida se destina a ellas, y el resto está repartido entre la industria y el transporte. Este hecho hace relevante la necesidad de establecer criterios para diseñar edificaciones que hagan un uso racional de la energía. Tal como lo muestra el gráfico 1, el sector residencial y el comercial representan el 60% del consumo de energía eléctrica en Venezuela, por lo cual se hace necesario orientar las recomendaciones de diseño hacia estos sectores. En particular el sector residencial es el de mayor consumo de energía eléctrica per cápita en América Latina (ver gráfico 2).',
                    style: textStyleBody,
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  child: Text(
                    'El mayor porcentaje de consumo energético en una edificación se produce a través de los sistemas de aire acondicionado y de iluminación. En oficinas, tal como se muestra en el gráfico 3, el consumo de energía generado por esos sistemas representa más del 60%, aunque este porcentaje puede variar ligeramente en otros usos: educacional, residencial, médico-asistencial, recreacional, etc. En consecuencia, las estrategias de eficiencia energética deben estar dirigidas en primer lugar a reducir el consumo en los equipos de aire acondicionado e iluminación.',
                    style: textStyleBody,
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  child: Text(
                    'Se han identificado varias causas del aumento constante y sostenido del consumo de energía eléctrica en Venezuela:',
                    style: textStyleBody,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
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
