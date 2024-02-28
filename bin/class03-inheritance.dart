void main() {
  // 상속 extends
  Person person01 = new Person('seonghong', "developer", "changedTest");

  Male male = new Male('seonghong222222', "developer2222", "changedTest");

  male.printData();
  male.printMaleName();
}

class Person {
  String name;
  String job;
  String test = 'test';

  Person(name, job, test)
      : this.name = name,
        this.job = job,
        this.test = test;

  void printData() {
    print('$name - $job - $test');
  }
}

class Male extends Person {
  // super 부모 class의 인스턴스에 접근하기 위함
  Male(String maleName, String maleJob, String test1)
      : super(maleName, maleJob, test1); // super : 부모의 constructor을 그대로 사용

  void printMaleName() {
    print('male name is : ${this.name}');
  }
}
