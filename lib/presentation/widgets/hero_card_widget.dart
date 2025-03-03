import 'package:flutter/material.dart';

class HeroCardWidget extends StatelessWidget {
  final String name;
  final String description;
  final String type = 'Hero';
  final String imageRoute;

  const HeroCardWidget({
    super.key,
    required this.name,
    required this.description,
    required this.imageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          // Fondo con la imagen
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/$imageRoute',
              width: 250,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          // Nombre en la parte superior
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 3,
                    color: Colors.black.withOpacity(0.8),
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
          // Descripción con fondo semitransparente
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
