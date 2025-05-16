# Zeebee

[![pub package](https://img.shields.io/pub/v/zeebee.svg)](https://pub.dev/packages/zeebee)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Zeebee is a flexible SDK for creating powerful AI chat experiences with multiple language models.

## Key Features

- Multi-turn chat: Maintains context across multiple interactions.
- Streaming responses: Displays AI responses in real-time as they're generated.
- Rich text display: Supports formatted text in chat messages.
- Voice input: Allows users to input prompts using speech.
- Multimedia attachments: Enables sending and receiving various media types.
- Custom styling: Offers extensive customization to match your app's design.
- Chat serialization/deserialization: Store and retrieve conversations between app sessions.
- Pluggable LLM support: Implement a simple interface to plug in your own LLM.
- Cross-platform support: Compatible with the Android, iOS, web, and macOS platforms.

## Installation

Add zeebee to your `pubspec.yaml`:

```yaml
dependencies:
  zeebee: ^latest_version
```

Or run:

```
flutter pub add zeebee
```

## Quick Start

```dart
// main.dart

import 'package:zeebee/zeebee.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Zeebee().initialize(
    apiKey: 'your_api_key',
  );
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          themeMode: ThemeMode.system,
          builder: EasyLoading.init(),
        );
      },
    ),
  );
}
```

```dart
// app_pages.dart

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
```

## Contributing

Contributions are welcome! If you'd like to contribute, please:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This package is distributed under the MIT license. See the `LICENSE` file for more information.

## Contact

If you have any questions or suggestions, please open an issue on GitHub or contact us at [service@ivita.vn].