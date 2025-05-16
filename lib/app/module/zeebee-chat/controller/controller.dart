import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:get/get.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ZeebeeChatController extends GetxController {
  late GeminiProvider provider;
  final lightStyle = LlmChatViewStyle.defaultStyle();

  @override
  void onInit() {
    _initChatProvider();
    super.onInit();
  }

  void _initChatProvider() async {
    provider = GeminiProvider(
      model: GenerativeModel(model: 'gemini-2.0-flash', apiKey: ''),
    );
  }
}
