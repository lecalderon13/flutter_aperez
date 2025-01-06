import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "button_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            context.pop();
          }),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Able")),
            const ElevatedButton(
                onPressed: null, child: const Text("Elevated Disabled")),
            FilledButton(onPressed: () {}, child: const Text("Filled")),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new),
                label: const Text("Elevated Icon")),
            OutlinedButton(onPressed: () {}, child: const Text("Outline")),
            OutlinedButton.icon(
                onPressed: () {},
                label: const Text("Outline Icon"),
                icon: const Icon(Icons.terminal)),
            TextButton(onPressed: () {}, child: const Text("Text")),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_box_outlined),
              label: const Text("Text Icon"),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.app_registration_rounded)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_rounded),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colors.primary),
                    iconColor: MaterialStatePropertyAll(Colors.white)))
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20), // Esquinas redondeadas
      child: Material(
        color: Colors.blueGrey,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Holo",
              style: TextStyle(color: colors.onPrimary),
            ),
          ),
        ),
      ),
    );
  }
}
