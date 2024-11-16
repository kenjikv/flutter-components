
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  
  final options = const['Texto 1', 'Texto 2', 'Texto 3', 'Texto 4', 'Texto 5', 'Texto 6',];
  
  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView 1'),
      ),
      body: ListView(
        children: [
          ...options.map((item) => ListTile(
              title: Text(item),
              trailing: Icon(Icons.arrow_forward_ios),
          )).toList(),
        ],
      ),
    );
  }
}