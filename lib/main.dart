import 'package:audiotales/blocs/record_bloc/bloc/record_bloc.dart';
import 'package:audiotales/pages/screens/logined_page_start.dart';
import 'package:audiotales/pages/screens/splashscreen.dart';
import 'package:audiotales/resouses/themes.dart';
import 'package:audiotales/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';

import 'generated/l10n.dart';

void main() {
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    _initSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RecordBloc(),
        ),
      ],
      child: BlocBuilder<RecordBloc, RecordingState>(
        builder: (context, state) {
          return MaterialApp(
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: AppThemes.light(),
             // home: const SplashScreen(), 
              initialRoute: SplashScreen.routeName,
                  onGenerateRoute: AppRouter.generateRoute,
                  routes: {
                    SplashScreen.routeName: (_) => const SplashScreen(),
                  },
            //  const LoginedPageStart(),
            );
        }
      ),
    );
  }
}

void _initSettings(){
   PhoneInputFormatter.replacePhoneMask(
      countryCode: 'UA',
      newMask: '+000 (00) 000 00 00',
    );
}