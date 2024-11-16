
import 'package:components_application/widgets/custom_input_filed.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms')
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomInputFiled(labelText: 'Nombre', hintText: 'Nombre del usuario', obscureText: false),
            SizedBox(height: 30),

            CustomInputFiled(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true),
            SizedBox(height: 30),

            CustomInputFiled(labelText: 'Teléfono', hintText: 'Teléfono del usuario', keyboardType: TextInputType.phone, obscureText: false),
            SizedBox(height: 30),

            CustomInputFiled(labelText: 'Correo', hintText: 'Correo electronico del usuario', keyboardType: TextInputType.emailAddress, obscureText: false),
            SizedBox(height: 30),

            DropdownButton<String>(
              value: 'Admin',
              items: [
                DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
              ], 
              onChanged: (value) {
                print(value);
              }),

            ElevatedButton(
              onPressed: () {
                print('Se guardo los datos');
              }, 
              child: SizedBox(
                width: double.infinity,
                child: Center(child: Text('Guardar'),),
              )
            )
          ],
        ),
      )
    );
  }
}