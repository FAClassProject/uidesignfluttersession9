import 'package:flutter/material.dart';

class AppTheme  extends ChangeNotifier{

  bool _isDark = true;
  ThemeMode get currentTheme => _isDark ? ThemeMode.dark : ThemeMode.light;

void toggleTheme(){
  _isDark = !_isDark;
  notifyListeners();
}
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black54,
        appBarTheme: AppBarTheme(
      color: Colors.purpleAccent
  ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red))
    ),
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(headline4: TextStyle(color: Colors.white70, fontWeight:  FontWeight.w500))
  );

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
          color: Colors.indigo
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red))
      ),
      iconTheme: IconThemeData(color: Colors.blue),
      textTheme: TextTheme(headline4: TextStyle(color: Colors.blueGrey, fontWeight:  FontWeight.w500))
  );
}