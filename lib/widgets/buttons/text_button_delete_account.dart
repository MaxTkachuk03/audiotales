import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/widgets/buttons/floating_action_button_delete.dart';
import 'package:audiotales/widgets/buttons/floating_action_button_no.dart';
import 'package:audiotales/widgets/dialogs_windows/delete_dialog.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class TextButtonDeleteAccount extends StatelessWidget {
  const TextButtonDeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        simpleDialogWithOption(context);
      },
      child: Text(
        S.of(context).deleteAccount,
        style: const TextStyle(
          color: red,
          fontWeight: AppFonts.regular,
          fontSize: 14.0,
        ),
      ),
    );
  }
}