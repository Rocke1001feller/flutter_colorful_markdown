<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

**markdown version css, convert your markdown colorful**

## Features

| No images | Images background |
|--------|--------|
|  ![Image](https://github.com/user-attachments/assets/e79dbd52-7dc4-4c93-8ff9-3cfdb1a0696a) | ![Image](https://github.com/user-attachments/assets/78597ce8-b1da-405e-b44c-f389cb824eb0) |

## Getting started

```dart
import 'package:flutter_colorful_markdown/flutter_colorful_markdown.dart';
```

## Usage


```dart
// import the package
import 'package:flutter_colorful_markdown/flutter_colorful_markdown.dart';
// create new colorful markdown widget
final ColorfulMarkdown newColorfulMarkdown = ColorfulMarkdown(
    backgroundImage: _backgroundImages[Random().nextInt(_backgroundImages.length)], // your background image if you need it
    data: _markdownData, // your data
    ),
```

## Additional information

Any issuses are welcome
