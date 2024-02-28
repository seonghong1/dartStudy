void main() {
  Engineer engineer001 = new Engineer('seonghong', 24, 'engineer');

  engineer001.printInfo();
}

class Person {
  String name;
  int age;

  Person(String name, int age)
      : this.name = name,
        this.age = age;
}

class Engineer extends Person {
  String job;
  // 상속받는 class에 부모요소에 존재하는 인스턴스와 동일한 이름의 인스턴스가 있을 경우 자식class에서 this는 해당 클래스 내의 인스턴스를 가르킨다.
  String name = 'test';

  Engineer(String name, int age, String job)
      : this.job = job,
        super(name, age);

  void printInfo() {
    print('${this.name} / ${this.age} / ${this.job}');
    print('${super.name} / ${super.age} / ${this.job}');
  }
}
