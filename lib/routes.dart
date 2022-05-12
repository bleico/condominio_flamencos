import 'package:beamer/beamer.dart';
import 'package:condominio_flamencos/acerca.dart';
import 'package:condominio_flamencos/junta_page.dart';
import 'package:condominio_flamencos/main.dart';
import 'package:condominio_flamencos/notificaciones_page.dart';
import 'package:condominio_flamencos/reglas.dart';
import 'package:flutter/material.dart';

final routerDelegate = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/': (context, state, data) {
        return const BeamPage(
          title: 'Condominio Los Flamencos',
          key: ValueKey('condominio'),
          type: BeamPageType.fadeTransition,
          child: MyHomePage(),
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
      '/reglas': (context, state, data) {
        return const BeamPage(
          key: ValueKey('reglas'),
          title: 'Reglas del Condominio',
          type: BeamPageType.fadeTransition,
          child: ReglasPage(),
        );
      },
      '/notificaciones': (context, state, data) {
        return const BeamPage(
          key: ValueKey('notificaciones'),
          type: BeamPageType.fadeTransition,
          title: 'Notificaciones',
          child: NorificacionesPage(),
        );
      },
    },
  ),
);
