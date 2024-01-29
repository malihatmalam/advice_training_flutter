import '../datasources/data_local_datasource.dart';

class DataRepoImpl {
  final DataLocalDataSouceImpl dataLocalDataSouce =
  DataLocalDataSouceImpl();

  @override
  bool getThemeDataFormDataSource() {
    final localdatabase = dataLocalDataSouce.getDataLocal();
    final theme = localdatabase.get('themeDark', defaultValue: false);
    return theme;
  }

  Future<String> getAdviceLocalDataFormDataSource() async {
    final localdatabase = await dataLocalDataSouce.getDataLocal();
    final advice = localdatabase.get('advice', defaultValue: '');
    return advice;
  }

}
