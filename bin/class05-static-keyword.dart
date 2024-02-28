void main() {
  Car car001 = new Car('red', 1000.99);
  // 인스턴스화가 되지 않은 brand변수를 변경하기 위해서는 class에 직접 접근 / 해당 class를 참조하고 있는 모든 요소에 공통적으로 적용됨
  Car.brand = 'audi';
  car001.printCarInfo();
}

class Car {
  // static 키워드는 인스턴스화 되지 않음, class자체에 귀속되어있음
  static var brand;
  String color;
  double price;

  Car(color, price)
      : this.color = color,
        this.price = price;

  void printCarInfo() {
    print('color : $color / price : $price / brand : $brand');
  }
}
