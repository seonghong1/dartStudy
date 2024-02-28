void main() {
  /* ---------------------------------------------------------------------- */
  /*
   * step 17 - Class [#1] 선언 및 Constructor
   */

  // --constructor--
  // Person person01 = new Person('seonghong', 24);
  Person person01 = new Person(name: 'seonghong', age: 24);

  person01.printName();
  person01.printName('unique name test');

  // --constroctor override--
  Person person02 = new Person.fromMap({'name': 'seong hong111', 'age': 24});
  // 인스턴스로 접근해 값을 변경할 수 있다. / final키워드로 class내 인스턴스를 선언할 경우 재할당 불가
  // person02.name = 'changed name';
  person02.printName();
}

class Person {
  final name;
  int age;
  // --constructor--
  // Person(String name, int age)
  //     : this.name = name,
  //       this.age = age;
  // 네임드 파라미터로도 가능
  Person({String name = 'name is null', int age = 0})
      : this.name = name,
        this.age = age;

  // --constroctor override--
  Person.fromMap(Map input)
      : this.name = input['name'],
        this.age = input['age'];

  void printName([String uniqueName = '']) {
    if (uniqueName.length > 0) {
      print('name is ${uniqueName}');
    } else {
      print('name is ${this.name}');
    }
  }
}
