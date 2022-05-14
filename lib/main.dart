import 'package:beamer/beamer.dart';
import 'package:condominio_flamencos/home_page.dart';
import 'package:condominio_flamencos/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: routerDelegate,
      ),
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
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
