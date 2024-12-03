import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/Config/Screens/my_message_bubble.dart';
import 'package:yes_no_app/Config/presentation/Providers/chat_provider.dart';
import 'package:yes_no_app/Config/presentation/Widgets/Shared/message_field_box.dart';
import 'package:yes_no_app/Config/presentation/Widgets/her_message_bubble.dart';
import 'package:yes_no_app/Domain/Entities/message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/736x/e0/ea/57/e0ea57b3c80cfc463e70e4b461cab455.jpg"),
          ),
        ),
        title: const Text("Crush de Hollywood"),
        centerTitle: false,
      ),
      body: const ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: chatProvider.message.length,
                    itemBuilder: (context, index) {
                      final message = chatProvider.message[index];

                      return (message.fromWho == FromWho.hers)
                          ? const HerMessageBubble()
                          : const MyMessageBubble( message : "Hola, soy un mensaje dinamico" );
                    })),
            const Text("hOLA"),
            // Caja de texto
            MessageFieldBox(
             onvALUE: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
