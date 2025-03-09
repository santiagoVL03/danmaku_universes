import 'package:danmaku_universes/presentation/widgets/hero_card_widget.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Page :D')),
      body: Container(
        child: Center(
          child: HeroCardWidget(name: 'Arya Stark', description: 
            'Arya puede copiar el rostro de otro jugador '
            'descartando 1 carta/s de puntaje 4 hasta el '
            'nicio de su siguiente turno haciendo que este '
            'sea la Fuente de Daño de cualquier accion o '
            'efecto o atq, etc de Arya  durante ese tiempo '
            'esta Habilidad puede ser activada 2 veces '
            'como maximo simultaneamente '
            'Los ataques de Arya no pueden atravesar '
            'Armaduras. Pero puede jugar cualquier carta '
            'Danmaku __ como Desmantelar ', imageRoute: 'heros/arya_stark.jpeg'),
        ),
      ),
    );
  }
}
