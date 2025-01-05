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
    title: "Tarjetas",
    subTitle: "Un contenedor estilizado",
    link: "/card",
    icon: Icons.credit_card,  // Aquí usas el icono correctamente
  ),
];

