import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: "Botones",
    subTitle: "Botones de Flutter",
    link: "/buttons",
    icon: Icons.smart_button_outlined,  // Aquí usas el icono correctamente
  ),

  MenuItems(
    title: "Tarjetas",
    subTitle: "Un contenedor estilizado",
    link: "/cards",
    icon: Icons.credit_card,  // Aquí usas el icono correctamente
  ),
];

