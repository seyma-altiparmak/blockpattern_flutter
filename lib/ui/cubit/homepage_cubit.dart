import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/mathrepo.dart';

class CubitHomepage extends Cubit<int>{
  CubitHomepage():super(0); //constructor,

  var mrepo = MathematicalEquations();
  void sumIt(String takenNumber,String takenNumber2){
  emit(mrepo.sumIt(takenNumber, takenNumber2));
}
void crossIt(String takenNumber,String takenNumber2){
    emit(mrepo.crossIt(takenNumber, takenNumber2));
}
}