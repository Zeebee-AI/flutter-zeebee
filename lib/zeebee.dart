library zeebee;

import 'package:zeebee/app/module/zeebee-chat/binding/binding.dart';
import 'package:flutter/foundation.dart';
import 'package:zeebee/app/module/zeebee-chat/screen/zeebee_chat_screen.dart';
import 'package:zeebee/app/module/zeebee-chat/controller/controller.dart';
import 'package:get/get.dart';
import 'package:zeebee/app/routes/app_pages.dart';

class Zeebee {
  static final Zeebee _instance = Zeebee._internal();
  factory Zeebee() => _instance;
  Zeebee._internal();

  bool _isInitialized = false;
  String? _apiKey;

  Future<void> initialize({
    required String apiKey,
  }) async {
    if (_isInitialized) {
      if (kDebugMode) {
        print('---------- INITIALIZED IS ALREADY ----------');
      }
      return;
    }
    _apiKey = apiKey;
    _isInitialized = true;
    if (kDebugMode) {
      print('---------- INITIALIZED SUCCESS ----------');
    }
  }

  bool get isInitialized => _isInitialized;
  String? get apiKey => _apiKey;

  Future<Map<String, dynamic>> performAction(
      {required Map<String, dynamic> params}) async {
    _checkInitialized();
    return {'success': true, 'data': params};
  }

  void _checkInitialized() {
    if (!_isInitialized) {
      throw Exception('---------- MUST CALL Zeebee().initialize() ----------');
    }
  }

  String getChatScreenRoute() {
    return Routes.CHAT;
  }

  ZeebeeChatScreen chatScreen() {
    Get.put(ZeebeeChatController());
    return const ZeebeeChatScreen();
  }

  ZeebeeChatBinding chatBinding() {
    return ZeebeeChatBinding();
  }
}
