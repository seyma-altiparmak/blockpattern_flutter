import 'package:flutter_bloc/flutter_bloc.dart';

class CubitHomepage extends Cubit<int>{
  CubitHomepage():super(0); //constructor,

void sumIt(String takenNumber,String takenNumber2){
  int number = int.parse(takenNumber);
  int number2 = int.parse(takenNumber2);
  int sum = number + number2;
  emit(sum);
}
void crossIt(String takenNumber,String takenNumber2){
  int number = int.parse(takenNumber);
  int number2 = int.parse(takenNumber2);
  int cross = number * number2;
  emit(cross);
}
}