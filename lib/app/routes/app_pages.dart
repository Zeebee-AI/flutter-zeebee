import 'package:zeebee/app/module/zeebee-chat/binding/binding.dart';
import 'package:zeebee/app/module/zeebee-chat/screen/zeebee_chat_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.CHAT;

  static final routes = [
    GetPage(
      name: Routes.CHAT,
      page: () => const ZeebeeChatScreen(),
      binding: ZeebeeChatBinding(),
    ),
  ];
}
