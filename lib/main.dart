import 'package:firebase_pictures_saved/resource/navigator_enum.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  for (var element in NavigationRoute.values)
    element.name: (BuildContext context) => element.screen
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      initialRoute: NavigationRoute.login.name,
      routes: routes,
    );
  }
}
