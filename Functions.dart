void main() {
 // PatientNumber();
  print(findMaxNumber());
}

/*void PatientNumber() async {
  await Future.delayed(Duration(milliseconds: 10));
  print('please wait for your number');
}*/

int findMaxNumber() {
  List<int> NumberList = [10, 20, 40, 50, 500, 400, 79];
  int max = 0;
  max = NumberList[0];

  for (int i = 1; i < NumberList.length; i++) {
    if (max < NumberList[i]) {
      max = NumberList[i];
    }
  }
  return max;
}
