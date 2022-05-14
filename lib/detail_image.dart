import 'package:condominio_flamencos/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class DetailsImage extends StatelessWidget {
  final Map<String, dynamic> image;
  const DetailsImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //const AppBarWidget(title: 'Detalles de la image'),
          Expanded(
            child: GestureDetector(
              onTap: () => context.beamBack(),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Hero(
                    key: key,
                    tag: 'imageHero',
                    child: Image.asset(
                      image['image'],
                      fit: BoxFit.contain,
                      isAntiAlias: true,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
