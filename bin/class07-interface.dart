void main() {}

// dart에서는 interface키워드를 사용하지 않음, interface의 역할을 class로 대체함
// implements 키워드를 사용
class IPersonInterface {
  String name = '';
  int age = 0;

  void printInfo() {}
}

class Male implements IPersonInterface {
  String name = '';
  int age = 0;

  Male(String name, int age)
      : this.name = name,
        this.age = age;

  void printInfo() {}
}

class Female implements IPersonInterface {
  String name = '';
  int age = 0;

  Female(String name, int age)
      : this.name = name,
        this.age = age;

  void printInfo() {}
}
