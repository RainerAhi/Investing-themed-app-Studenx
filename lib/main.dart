import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:studenx_oigev2/AktsiadFolder/google_sheets_api.dart';
import 'package:studenx_oigev2/SelectLanguage.dart';
import 'package:studenx_oigev2/pages/hinnad.dart';
import 'package:studenx_oigev2/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:coingecko_api/coingecko_api.dart';
import 'package:gsheets/gsheets.dart';
import 'package:hive_flutter/hive_flutter.dart';




void main() async {

  await Hive.initFlutter();

  var box = await Hive.openBox("mybox");

  WidgetsFlutterBinding.ensureInitialized();

  GoogleSheetsApi().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.pink,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'studenx',
        theme: theme,
        darkTheme: darkTheme,
        home: const SelectLanguage(),
      ),
    );
  }
}
