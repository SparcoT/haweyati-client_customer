import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:haweyati/src/routes.dart';

class HaweyatiApp extends StatelessWidget {
  final bool status;
  HaweyatiApp(this.status);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: "Lato",
        appBarTheme: AppBarTheme(
          color: Color(0xff313f53),
          brightness: Brightness.dark
        ),
        primaryColor: Color(0xff313f53),
        accentColor: Color(0xFFFF974D)
      ),
      child: CupertinoApp(
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
//        initialRoute: "/sign-in",
//        initialRoute: "/",
        initialRoute: status ? "/features" : "/",
//        initialRoute: "/",
        routes: routes,
//        home: FeaturesPage(),
      )
    );
  }
}