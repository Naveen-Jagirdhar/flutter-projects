import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tax_app/pages/home_page.dart';
import 'package:tax_app/pages/rent_receipt.dart';
import 'package:tax_app/pages/tips_page.dart';

import 'package:tax_app/providers/theme_providers.dart';
import 'package:tax_app/utils/theme_dart.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context , theme , snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: darkTheme(context),
          themeMode: theme.isTheme ? ThemeMode.dark : ThemeMode.light,
          home: const HomePage(),
          routes: {
            TipsPage.routeName : (context)=> const TipsPage(),
            RentPage.routeName : (context)=> RentPage(),
          },
        );
      }),
    );
  }
}
