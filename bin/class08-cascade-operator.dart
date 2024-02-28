void main() {
  Person person01 = new Person('seonghong', 24);
  person01.printAge();
  person01.printName();
  person01.age;

  // Casecade Operator
  // class로 생성한 요소를 변수에 할당한뒤 사용하지 않고 아래와 같이 ..를 사용해 인스턴스에 접근
  new Person('seonghong', 24)
    ..age
    ..name
    ..printAge()
    ..printName();
}

class Person {
  String name;
  int age;

  Person(String name, int age)
      : this.name = name,
        this.age = age;

  void printName() {
    print(this.name);
  }

  void printAge() {
    print(this.age);
  }
}
