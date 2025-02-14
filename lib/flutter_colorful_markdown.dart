import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';

import 'src/random_style_sheet.dart';

/// A widget that displays markdown with random colorful style.
class ColorfulMarkdown extends StatelessWidget {
  /// Creates a widget that displays markdown with random colorful style.
  final double? width;
  final double? height;
  final String? backgroundImage;
  final String? data;
  final Listenable? streamData;

  const ColorfulMarkdown({
    super.key,
    this.width,
    this.height,
    this.backgroundImage,
    this.data,
    this.streamData,
  });

  @override
  Widget build(BuildContext context) {
    final MarkdownStyleSheet styleSheet =
        RandomStyleSheet.getRandomMarkdownStyleSheet(random: Random());
    return Stack(
      children: [
        // Background image
        Positioned.fill(
          child: CachedNetworkImage(
            imageUrl: backgroundImage ?? 'https://picsum.photos/seed/${Random().nextInt(10000)}/200/300',
            imageBuilder:
                (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9, // Set width
            height: MediaQuery.of(context).size.height * 0.8, // Set height
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(
                0.6,
              ), // TODO: final or direct constant. blurOpacity = 0.1. Original 0.6, test later
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: SingleChildScrollView(
              // Scrollable container
              // Actual content, placed in MarkDownBody
              child: _markdownContent(styleSheet),
            ),
          ),
        ),
      ],
    );
  }

  Widget _markdownContent(styleSheet) {
    return streamData != null
        ? StreamBuilder<String>(
          stream: streamData as Stream<String>,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return _markdownBodyData(snapshot.data, styleSheet);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        )
        : _markdownBodyData(data, styleSheet);
  }

  Widget _markdownBodyData(data, styleSheet) {
    return MarkdownBody(
      data: data ?? 'Please check your data arguments',
      selectable: true,
      extensionSet: md.ExtensionSet.gitHubWeb, // support table and more
      styleSheet: styleSheet,
      onTapLink: (_, url, __) async {
        var uri = Uri.parse(url!);
        try {
          await launchUrl(uri);
        } catch (e) {
          throw 'Could not launch $uri: $e';
        }
      },
    );
  }
}
