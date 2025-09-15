void main() {
  Hamad olderSon = Hamad();
  olderSon.name = 'Muhammad Ahmad';
  olderSon.age = 20;
  olderSon.profession = 'Student';
}

class Father {
  String? name;
  int? age;
  String? profession;

  void fatherInfo() {
    print('Father name is :$name');
    print('Father age is :$age');
    print('Father profession is :$profession');
  }
}

class Adil {
  String? name;
  int? age;

  void SonInfo() {
    print('elder son name is :$name');
    print('elder son age is :$age');
  }
}

class Hamad extends Father {
  String? name;
  int? age;
}
