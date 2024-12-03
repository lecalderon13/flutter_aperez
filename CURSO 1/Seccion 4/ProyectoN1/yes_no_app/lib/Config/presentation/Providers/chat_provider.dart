import 'package:flutter/material.dart';
import 'package:yes_no_app/Domain/Entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: "Hola cariño", fromWho: FromWho.mine),
    Message(text: "Estas demorando...", fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: "hola", fromWho: FromWho.mine);
    message.add(newMessage);

    notifyListeners();
  }
}
