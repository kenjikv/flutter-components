
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuario'),
        actions: [ _UserAvatar()],
      ),
      body: _ImageAvatar(),
    );
  }
}

class _UserAvatar extends StatelessWidget {
  const _UserAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: CircleAvatar(
        child: Text('KK'),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}

class _ImageAvatar extends StatelessWidget {
  const _ImageAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage('https://www.tuasesordemoda.com/wp-content/uploads/2022/11/famosos-rostro-redondo-butler.jpeg'),
      ),
    );
  }
}