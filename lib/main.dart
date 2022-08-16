import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_pictures_saved/firebase_options.dart';
import 'package:firebase_pictures_saved/modules/user/bloc/user_bloc.dart';
import 'package:firebase_pictures_saved/resource/navigator_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  for (var element in NavigationRoute.values)
    element.name: (BuildContext context) => element.screen
};

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        initialRoute: NavigationRoute.login.name,
        routes: routes,
      ),
    );
  }
}
