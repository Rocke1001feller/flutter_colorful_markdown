import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// create a random style sheet
class RandomStyleSheet {
  static getRandomMarkdownStyleSheet({required Random random}) {
    return MarkdownStyleSheet(
      // h1 - h6 styles, font sizes are randomly generated as required, colors are random near-black colors
      h1: TextStyle(
        fontSize: _getRandomFontSize(random, 28, 32),
        color: _getRandomContrastingColor(random),
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.wavy,
        shadows: [
          Shadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ],
      ),
      h2: TextStyle(
        fontSize: _getRandomFontSize(random, 24, 28),
        color: _getRandomContrastingColor(random),
        fontWeight: FontWeight.bold,
        letterSpacing: 1.8,
      ),
      h3: TextStyle(
        fontSize: _getRandomFontSize(random, 20, 24),
        color: _getRandomContrastingColor(random),
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
        height: 1.3,
      ),
      h4: TextStyle(
        fontSize: _getRandomFontSize(random, 16, 20),
        color: _getRandomContrastingColor(random),
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
        height: 1.4,
      ),
      h5: TextStyle(
        fontSize: _getRandomFontSize(random, 12, 16),
        color: _getRandomContrastingColor(random),
        fontWeight: FontWeight.bold,
        letterSpacing: 1.1,
        height: 1.5,
      ),
      h6: TextStyle(
        fontSize: _getRandomFontSize(random, 8, 12),
        color: _getRandomContrastingColor(random),
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
        height: 1.6,
      ),

      // p style, font size between (12, 20), color strongly contrasting with white
      p: TextStyle(
        fontSize: _getRandomFontSize(random, 13, 15),
        color: _getRandomNearBlackColor(random),
        fontWeight: FontWeight.bold,
        height: 1.5,
      ),
      pPadding: EdgeInsets.all(8.0),

      // a style, random color, with underline
      a: TextStyle(
        color: _getRandomNearBlackColor(random),
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
      ),

      // Image related styles
      img: TextStyle(
        color: _getRandomNearBlackColor(random),
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
      ),

      // Strikethrough text style, red for strong warning
      del: TextStyle(color: Colors.red, decoration: TextDecoration.lineThrough),

      // Emphasized text style
      em: TextStyle(fontStyle: FontStyle.italic, color: Colors.blueAccent),

      // Bold text style
      strong: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),

      // Checkbox style
      checkbox: TextStyle(
        color: _getRandomNearBlackColor(random),
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
      ),

      // Horizontal rule decoration
      horizontalRuleDecoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: _getRandomNearBlackColor(random),
            width: 2.0,
          ),
        ),
      ),

      // Blockquote style
      blockquote: TextStyle(
        color: Colors.grey,
        fontStyle: FontStyle.italic,
        fontSize: 16,
        backgroundColor: Colors.grey.shade200,
        height: 1.4,
      ),
      blockquoteDecoration: BoxDecoration(
        border: Border(left: BorderSide(color: Colors.grey, width: 4.0)),
        color: Colors.grey.shade100,
      ),

      // Code style
      code: TextStyle(
        fontFamily: 'Courier',
        fontSize: 14,
        backgroundColor: Colors.grey.shade300,
        color: Colors.black87,
        height: 1.2,
      ),
      codeblockDecoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(4.0),
      ),

      // listBullet style
      listBullet: TextStyle(
        backgroundColor: _getRandomNearBlackColor(random),
        color: _getRandomContrastingColor(random),
        fontWeight: FontWeight.bold,
      ),
      listBulletPadding: EdgeInsets.only(right: 12, top: 8),
      listIndent: 4, // Fixed indent value 4
    );
  }

  static _getRandomFontSize(Random random, int min, int max) {
    return min + random.nextDouble() * (max - min);
  }

  static _getRandomContrastingColor(Random random) {
    int r = 60 + random.nextInt(97); // 避免太接近白色
    int g = 60 + random.nextInt(97);
    int b = 60 + random.nextInt(97);
    return Color.fromARGB(255, r, g, b);
  }

  static _getRandomNearBlackColor(Random random) {
    int r = random.nextInt(97); // color between 0 ~ 96
    int g = random.nextInt(97);
    int b = random.nextInt(97);
    return Color.fromARGB(255, r, g, b);
  }
}
