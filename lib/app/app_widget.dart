import 'package:artca/app/shared/portrait_mode_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget with PortraitModeMixin {
  const AppWidget();
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
      title: 'ArtCaico',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.purple,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
