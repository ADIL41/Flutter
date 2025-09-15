void main() {
  Car Honda = Car();
  Honda.name = 'Civic';
  Honda.car_number = 221141;
  Honda.model = 2024;

  Car Toyota = Car();
  Toyota.name = 'Corrolla';
  Toyota.model = 2020;
  Toyota.car_number = 11225;
  Toyota.Car_detail();
  Honda.Car_detail();
  BMW bmw1 = BMW();
  bmw1.name = 'BMW_2.0_Terbo';
  bmw1.car_number = 20109;
  bmw1.model = 2019;
  bmw1.Car_detail();
}

class Car {
  String? name;
  int? car_number;
  int? model;

  void Car_detail() {
    print('Name $name');
    print('Car_number $car_number');
    print('Model $model');
  }
}

class BWM {
  String? name;
  int? engine_num;

  void InfoCar() {
    print('Car_name $name');
    print('engine_num $engine_num');
  }
}

class BMW extends Car {
  String? name;
  int? car_number;
  int? model;
}
