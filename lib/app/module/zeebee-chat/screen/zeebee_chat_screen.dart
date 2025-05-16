import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class ZeebeeChatScreen extends GetView<ZeebeeChatController> {
  const ZeebeeChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Zeebee Chat", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: [
          if (!Platform.isIOS)
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.voice_chat, color: Colors.black),
            ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.black),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          LlmChatView(
            provider: controller.provider,
            welcomeMessage:
                'Xin chào! Tôi là chatbot thông minh. Tôi có thể giúp gì cho bạn hôm nay?',
            style: controller.lightStyle,
          ),
        ],
      ),
    );
  }
}
