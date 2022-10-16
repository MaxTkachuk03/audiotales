import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/audiotales_pages/edit_page.dart';
import 'package:audiotales/pages/audiotales_pages/premium_page.dart';
import 'package:audiotales/pages/audiotales_pages/profile_page.dart';
import 'package:audiotales/pages/audiotales_pages/record_page.dart';
import 'package:audiotales/pages/main_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/widgets/buttons/floating_actions_buttons.dart';
import 'package:flutter/material.dart';

class TextButtonWapper extends StatelessWidget {
  const TextButtonWapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, MainPage.routeName);
      },
      child: Text(
        S.of(context).after,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: black,
            fontWeight: AppFonts.regular,
            fontSize: 24.0,
            fontFamily: AppFonts.fontFamily),
      ),
    );
  }
}

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

class TextButtonAdd extends StatelessWidget {
  const TextButtonAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        S.of(context).add,
        style: const TextStyle(
          color: white,
          fontWeight: AppFonts.regular,
          fontSize: 14.0,
          decoration: TextDecoration.underline,
          decorationThickness: 1.0,
        ),
      ),
    );
  }
}

class TextButtonPremium extends StatelessWidget {
  const TextButtonPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, PremiumPage.routeName);
      },
      child: Text(
        S.of(context).premium,
        style: const TextStyle(
          color: black,
          fontWeight: AppFonts.regular,
          fontSize: 14.0,
          decoration: TextDecoration.underline,
          decorationThickness: 1.0,
        ),
      ),
    );
  }
}

class TextButtonQuit extends StatelessWidget {
  const TextButtonQuit({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        S.of(context).quit,
        style: const TextStyle(
          color: black,
          fontWeight: AppFonts.regular,
          fontSize: 14.0,
        ),
      ),
    );
  }
}

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

Future simpleDialogWithOption(BuildContext context) async {
  return await showDialog(
      context: context,
      barrierDismissible: true,
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
                Navigator.popAndPushNamed(context, Profile.routeName);
              },
            ),
          ],
        );
      });
}

class TextButtonEdit extends StatelessWidget {
  const TextButtonEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, EditPage.routeName);
      },
      child: Text(
        S.of(context).edit,
        style: const TextStyle(
          color: black,
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
          fontSize: 14.0,
        ),
      ),
    );
  }
}

class TextButtonSave extends StatelessWidget {
  const TextButtonSave({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, Profile.routeName);
      },
      child: Text(
        S.of(context).save,
        style: const TextStyle(
          color: black,
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
          fontSize: 14.0,
        ),
      ),
    );
  }
}

class TextButtonCancel extends StatelessWidget {
  const TextButtonCancel({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, RecordPage.routeName);
      },
      child: Text(
        S.of(context).back,
        style: const TextStyle(
          color: black,
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
