
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  
  final options = const['Texto 1', 'Texto 2', 'Texto 3', 'Texto 4', 'Texto 5', 'Texto 6',];
  
  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView 1'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.amber),
          onTap: () {
            print(options[index]);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}