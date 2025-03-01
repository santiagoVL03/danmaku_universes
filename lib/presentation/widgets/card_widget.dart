import 'package:flutter/material.dart';
    
class CardWidget extends StatelessWidget {
  final String name;
  final int type; 

  const CardWidget({ Key? key, required this.name, required this.type }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(name, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text('Type: $type', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}