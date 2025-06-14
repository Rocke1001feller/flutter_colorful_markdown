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
|  ![Image](https://guoliufangfun.pages.dev/github/flutter_colorful_markdown/no_bg_image.gif) | ![Image](https://guoliufangfun.pages.dev/github/flutter_colorful_markdown/with_image_bg.gif) |

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
