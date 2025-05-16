import 'package:get/get.dart';
import 'package:zeebee/zeebee.dart';
part 'app_routes.dart';

class AppPages {
  static final INITIAL = Zeebee().getChatScreenRoute();

  static final routes = [
    GetPage(
      name: Zeebee().getChatScreenRoute(),
      page: () => Zeebee().chatScreen(),
      binding: Zeebee().chatBinding(),
    ),
  ];
}
