import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Snackbarscreen extends StatelessWidget {
  const Snackbarscreen({super.key});

  static const name = "snackbar_screen";

  void showCustomSnackbar ( BuildContext context) {

     ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hola Mundo'),
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog( BuildContext context){
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title:const Text('Estás seguro?'),
          content: const Text('Pastel...'),
          actions: [
            TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),

            FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Culpa de la comadreja')
                  ]
                );
              },child: const Text('Licencias usadas')),

            FilledButton.tonal(onPressed: () => openDialog(context),
             child: const Text('Mostrar dialogo'))
            
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
