import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class TextButtonWrapperAllOpen extends StatelessWidget {
  const TextButtonWrapperAllOpen({
    required this.color,
    required this.onTap,
    super.key,
  });

  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        S.of(context).openAll,
        style: TextStyle(
          color: color,
          fontSize: 14.0,
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
        ),
      ),
    );
  }
}