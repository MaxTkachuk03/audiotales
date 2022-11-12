import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/widgets/buttons/floating_action_button_delete.dart';
import 'package:audiotales/widgets/buttons/floating_action_button_no.dart';
import 'package:flutter/material.dart';

Future simpleDialogWithOption(BuildContext context) async {
  return await showDialog(
    context: context,
    barrierDismissible: true,
   // routeSettings: AppRouter.generateRoute,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          S.of(context).youSure,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: black,
            fontWeight: AppFonts.regular,
            fontFamily: AppFonts.fontFamily,
            fontSize: 20.0,
          ),
        ),
        content: Text(
          S.of(context).allAudiowillVanish,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: black,
            fontWeight: AppFonts.regular,
            fontFamily: AppFonts.fontFamily,
            fontSize: 14.0,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        actionsAlignment: MainAxisAlignment.center,
        alignment: Alignment.center,
        actions: [
          FlActButDeleteWrapper(
            onTap: () {},
          ),
          const SizedBox(
            width: 10.0,
          ),
          FlActButNOWrapper(
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
