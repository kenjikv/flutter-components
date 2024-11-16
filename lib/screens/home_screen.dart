
import 'package:components_application/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon, color: Colors.amber),
          title: Text(AppRoutes.menuOptions[index].name),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => Listview1Screen()
            // );
            // Navigator.push(context,  route);
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      )
    );
  }
}