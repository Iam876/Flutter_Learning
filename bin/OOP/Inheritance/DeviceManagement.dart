// Super Class
class ElectronicDevice {
  String? brand;
  String? model;
  int? year;

  ElectronicDevice(this.brand, this.model, this.year);
  void displayDeviceInfo() {
    print('''
Device Brand:$brand,
Device Model:$model,
Device Year:$year
''');
  }
}

class Laptop extends ElectronicDevice {
  int? ramSize;
  double? price;

  Laptop(String brand,String model,int year, this.ramSize,this.price) : super(brand, model, year);

  void displayLaptopInfo() {
    displayDeviceInfo();
    print('''
Ram Size: $ramSize GB,
Price : \$$price
''');
  }
}

class SmartPhone extends ElectronicDevice{
  String? operatingSystem;
  double? price;
  SmartPhone(String brand,String model,int year,this.operatingSystem,this.price):super(brand,model,year);
  void displaySmartphoneInfo(){
    displayDeviceInfo();
    print('''
Operating System: $operatingSystem,
Price : \$$price
''');
  }
}

void main(){
  Laptop laptop1 = Laptop("HP", "G840", 2014, 8, 25000);
  SmartPhone smartPhone1 = SmartPhone("Samsung", "A20", 2019, "Lolipop", 15000);

  laptop1.displayLaptopInfo();
  smartPhone1.displaySmartphoneInfo();
}
