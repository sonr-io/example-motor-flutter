import 'dart:ui';
import '../style.dart';

/// ## Gradient Text Type
class GradientText extends StatelessWidget {
  final Gradient gradient;
  final Text text;

  const GradientText({required this.gradient, required this.text, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textStyle = text.style;
    if (textStyle != null) {
      final width = textWidth(text.data!, textStyle);
      return Container(
        width: width,
        child: ShaderMask(
            shaderCallback: (bounds) => gradient.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
            child: text),
      );
    } else {
      return Center(
        child: ShaderMask(
            shaderCallback: (bounds) => gradient.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
            child: text),
      );
    }
  }

  /// Returns the Width of the Text given the TextStyle and the Height
  double textWidth(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
      maxLines: 1,
    )..layout(minWidth: 0, maxWidth: double.infinity);

    final countLines = (textPainter.size.height / style.fontSize!).ceil();
    final width = countLines * textPainter.size.width;
    return width;
  }
}

// /// ## URL Text Type
// class URLText extends StatelessWidget {
//   final String url;
//   const URLText(this.url, {Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // Parse URL
//     Uri uri = Uri.parse(url);
//     int segmentCount = uri.pathSegments.length;
//     var host = uri.host;
//     var path = "/";

//     // Check host for Sub
//     if (host.contains("mobile")) {
//       host = host.substring(5);
//       replaceAt(0, "m", host);
//     }

//     // Create Path
//     int directories = 0;
//     for (int i = 0; i <= segmentCount - 1; i++) {
//       // Check if final Segment
//       if (i == segmentCount - 1) {
//         directories > 0 ? path += path += "/${uri.pathSegments[i]}" : path += uri.pathSegments[i];
//       } else {
//         directories += 1;
//         path += ".";
//       }
//     }

//     return [host.lightSpan(fontSize: 16), directories > 0 ? path.subheadingSpan(fontSize: 16) : "".subheadingSpan()].rich();
//   }

//   String replaceAt(int index, String newChar, String oldStr) {
//     return oldStr.substring(0, index) + newChar + oldStr.substring(index + 1);
//   }
// }
