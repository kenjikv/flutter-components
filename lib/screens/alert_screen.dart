
import 'dart:io';

import 'package:components_application/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('El contenido de este dialogo es de ejemplo'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Cancelar')
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Aceptar')
            )
          ],
        );
      }
    );
  }
  
  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('El contenido de este dialogo es de ejemplo'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Cancelar')
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Aceptar')
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogAndroid(context), 
          child: Text('Mostrar dialogo de alerta', style: TextStyle(fontSize: 15)), 
        ),
      ),
    );
  }
}