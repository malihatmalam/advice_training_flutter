
import 'package:dartz/dartz.dart';
import 'package:training_flutter/data/datasources/data_local_datasource.dart';
import 'package:training_flutter/data/repositories/data_repo_impl.dart';

class ThemeUseCases {
  final dataLocalRepo = DataRepoImpl();
  final DataLocalDataSouceImpl dataLocalDataSouce =
  DataLocalDataSouceImpl();

  bool getTheme() {
    return dataLocalRepo.getThemeDataFormDataSource();
  }

  void setTheme() async {
    final localdatabase = await dataLocalDataSouce.getDataLocal();
    final theme = await localdatabase.get('themeDark', defaultValue: true);
    print(theme);
    if(theme){
      localdatabase.put('themeDark', false);
    }else{
      localdatabase.put('themeDark', true);
    }
  }

}