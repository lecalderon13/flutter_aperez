import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  final String message;

 const MyMessageBubble({super.key, required this.message}); // Constructor que requiere el mensaje.

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Text(
              message,
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
