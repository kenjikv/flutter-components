
import 'package:components_application/widgets/custom_card_type_1.dart';
import 'package:components_application/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://thumbs.dreamstime.com/b/opini%C3%B3n-asombrosa-de-los-paisajes-colinas-verdes-con-el-cielo-azul-del-verano-en-la-salida-sol-las-dolom%C3%ADas-seiser-alm-italia-124545597.jpg',
            title: 'Prueba 1'
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://img.freepik.com/fotos-premium/escapar-oasis-como-sueno_1318322-1381.jpg',
            title: 'Prueba 2'
          ),
        ],
      ),
    );
  }
}