import 'package:flutter/material.dart';
import 'package:training_flutter/domain/usecases/theme_usecases.dart';

class ThemeService extends ChangeNotifier {
  bool dataTheme = ThemeUseCases().getTheme();

  void toggleTheme(){
    // isDarkModeOn = !isDarkModeOn;
    ThemeUseCases().setTheme();
    notifyListeners();
  }

  bool getTheme() => ThemeUseCases().getTheme();


}
