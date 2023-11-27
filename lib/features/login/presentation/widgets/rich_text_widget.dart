import 'package:flutter/widgets.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget(
      {super.key,
      this.defaultText,
      this.defaultStyle,
      this.spanStyle,
      this.textSpan});
  final String? defaultText;
  final TextStyle? defaultStyle;
  final String? textSpan;
  final TextStyle? spanStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: defaultText,
        style: defaultStyle,
        children: [
          TextSpan(
            text: textSpan,
            style: spanStyle,
          ),
        ],
      ),
    );
  }
}
