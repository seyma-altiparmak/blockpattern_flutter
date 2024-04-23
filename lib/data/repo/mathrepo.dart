class MathematicalEquations{
  int sumIt(String takenNumber,String takenNumber2){
    int number = int.parse(takenNumber);
    int number2 = int.parse(takenNumber2);
    int sum = number + number2;
    return (sum);
  }
  int crossIt(String takenNumber,String takenNumber2){
    int number = int.parse(takenNumber);
    int number2 = int.parse(takenNumber2);
    int cross = number * number2;
    return (cross);
  }
}