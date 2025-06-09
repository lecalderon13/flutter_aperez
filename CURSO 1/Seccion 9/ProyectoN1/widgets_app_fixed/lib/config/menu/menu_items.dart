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

  MenuItems(
    title: "ProgressIndicators",
    subTitle: "Generales y controlados",
    link: "/progress",
    icon: Icons.refresh_rounded,  // Aquí usas el icono correctamente
  ),

  MenuItems(
    title: "Snackbars y Párrafos",
    subTitle: "Indicadores Impresos",
    link: "/snackbars",
    icon: Icons.info_outline_sharp,  // Aquí usas el icono correctamente
  ),

  MenuItems(
    title: "Containers Animados",
    subTitle: "Stateful Widget Animado",
    link: "/animated",
    icon: Icons.check_box_outline_blank_outlined,  // Aquí usas el icono correctamente
  ),

  MenuItems(
    title: "UI Controls + Titles",
    subTitle: "Una Serie de controles de Flutter",
    link: "/ui-controls",
    icon: Icons.car_rental_outlined,  // Aquí usas el icono correctamente
  ),

  MenuItems(
    title: "App Tutorial",
    subTitle: "El tutorial de una App",
    link: "/tutorial",
    icon: Icons.car_rental_outlined,  // Aquí usas el icono correctamente
  ),

  MenuItems(
    title: "infiniteScroll y Pull",
    subTitle: "Listas infinitas y para actualizar",
    link: "/tutorial",
    icon: Icons.accessible_rounded,  // Aquí usas el icono correctamente
  ),
];

