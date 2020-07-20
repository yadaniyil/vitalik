import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vitalik/states/auth_state.dart';
import 'package:vitalik/screens/login_screen.dart';
import 'package:vitalik/states/covers_state.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthState()),
          ChangeNotifierProvider(create: (context) => CoversState()),
        ],
        child: EasyLocalization(
          supportedLocales: [Locale('en', 'US')],
          fallbackLocale: Locale('en', 'US'),
          path: 'assets/translations',
          child: MyApp(),
        ),
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'vitalik'.tr(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          textTheme: TextTheme(
            headline6: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.black),
          ),
        ),
      ),
      home: LoginScreen(),
    );
  }
}
