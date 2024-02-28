void main() {
  // Getter
  // Setter

  Car car01 = new Car(name: 'red car', Price: 1200.55);
  car01.printData('car01');
  // class가 정의 영역과 인스턴스에 접근하는 영역이 다른 "파일"에 있을 경우 에러를 반환 (현재는 동일한 파일이라 괜찮음)
  car01._name;

  // Setter
  car01.setName = 'newName';

  // Getter
  print(car01.name);
}

class Car {
  // private : class외부에서 해당 인스턴스로 접근 불가
  String _name;
  final _price;

  Car({String name = '', double Price = 0.0})
      : this._name = name,
        this._price = Price;

  void printData(String varName) {
    print('$varName : name = ${this._name} / price = ${this._price}');
  }

  // getter, setter역할을 하는 function으로도 사용 가능
  // Gertter
  get name {
    return this._name;
  }

  // Setter
  set setName(String name) {
    this._name = name;
  }
}
