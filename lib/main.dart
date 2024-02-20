import 'package:flutter/material.dart';
import 'package:islam_app/config/application_theme_manager.dart';
import 'package:islam_app/layout/layout_view.dart';
import 'package:islam_app/moduls/hadeth/page/hadeth_detials_view.dart';
import 'package:islam_app/moduls/quran/page/quran_details.dart';
import 'package:islam_app/moduls/splash/page/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Isalmi App',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) => const QuranDetailsView(),
        HadethDetailsView.routeName: (context) => const HadethDetailsView(),
      },
    );
  }
}
