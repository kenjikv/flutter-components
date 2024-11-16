
import 'package:components_application/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  
  final String imageUrl;
  final String title;
  
  const CustomCardType2({
    super.key, 
    required this.imageUrl, 
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), 
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 230,
            fadeInDuration: Duration(milliseconds: 300),
            fit: BoxFit.cover,
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.all(10),
            child: Text(title),
          )
        ],
      ),
    );
  }
}