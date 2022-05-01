import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Menu(
            msg: 'Inicio',
            icons: Icons.home,
            route: '/',
          ),
          Menu(
            msg: 'Junta de condominio',
            icons: Icons.balance,
            route: '/junta',
          ),
          Menu(
            msg: 'Problemas',
            icons: Icons.info,
            route: '/problemas',
          ),
          Menu(
            msg: 'Acerca de',
            icons: Icons.library_books,
            route: '/acerca',
          ),
        ],
      ),
    );
  }
}

class Menu extends StatefulWidget {
  final String msg;
  final IconData icons;
  final String route;
  const Menu({
    Key? key,
    required this.msg,
    required this.icons,
    required this.route,
  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: navigateRoute, icon: Icon(widget.icons)),
        TextButton(
          onPressed: navigateRoute,
          child: Text(
            widget.msg,
            textAlign: TextAlign.start,
          ),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 25),
            textStyle: TextStyle(
              fontSize: 18,
              color: Colors.blue[200],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  void navigateRoute() {
    Beamer.of(context).beamToNamed(widget.route);
  }
}
