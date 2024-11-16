
import 'package:components_application/models/menu_options.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'listview1', icon: Icons.list, name: 'ListView Tipo 1', screen: const Listview1Screen()),
    MenuOptions(route: 'listview2', icon: Icons.list_alt, name: 'ListView Tipo 2', screen: const Listview2Screen()),
    MenuOptions(route: 'alert', icon: Icons.add_alert, name: 'Dialogo de alerta', screen: const AlertScreen()),
    MenuOptions(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Avatar widget', screen: const AvatarScreen()),
    MenuOptions(route: 'card', icon: Icons.card_membership, name: 'Card widget', screen: const CardScreen()),
    MenuOptions(route: 'input', icon: Icons.input_outlined, name: 'Input widget', screen: const InputsScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoute() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home' : (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen });
    }

    return appRoutes;
  }
}