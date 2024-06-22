class Car {
  // Static property to keep track of the number of Car objects created
  static int numberOfCars = 0;

  String brand;
  String model;
  int year;
  double milesDriven;

  // Constructor
  Car(this.brand, this.model, this.year, [this.milesDriven = 0.0]) {
    numberOfCars++;
  }

  // Method to drive the car and add miles
  void drive(double miles) {
    milesDriven += miles;
  }

  // Method to get miles driven
  double getMilesDriven() {
    return milesDriven;
  }

  // Method to get brand
  String getBrand() {
    return brand;
  }

  // Method to get model
  String getModel() {
    return model;
  }

  // Method to get year
  int getYear() {
    return year;
  }

  // Method to get the age of the car
  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  // Creating three Car objects with different brands, models, and years
  Car car1 = Car('Toyota', 'Corolla', 2010);
  Car car2 = Car('Honda', 'Civic', 2015);
  Car car3 = Car('Ford', 'Mustang', 2020);

  // Driving each car a different number of miles
  car1.drive(5000.5);
  car2.drive(3000.75);
  car3.drive(1000.25);

  // Printing out the brand, model, year, and miles driven for each car
  print(
      'Car 1: Brand = ${car1.getBrand()}, Model = ${car1.getModel()}, Year = ${car1.getYear()}, Miles Driven = ${car1.getMilesDriven()}, Age = ${car1.getAge()}');
  print(
      'Car 2: Brand = ${car2.getBrand()}, Model = ${car2.getModel()}, Year = ${car2.getYear()}, Miles Driven = ${car2.getMilesDriven()}, Age = ${car2.getAge()}');
  print(
      'Car 3: Brand = ${car3.getBrand()}, Model = ${car3.getModel()}, Year = ${car3.getYear()}, Miles Driven = ${car3.getMilesDriven()}, Age = ${car3.getAge()}');

  // Printing out the total number of Car objects created
  print('Total number of Car objects created: ${Car.numberOfCars}');
}
