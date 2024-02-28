void main() {
  // mathod덮어쓰기

  Parent parent01 = new Parent(2);
  Child child01 = new Child(2);

  int result = child01.calculate();
  print(result);
}

class Parent {
  final number;

  Parent(int number) : this.number = number;

  int calculate() {
    return this.number * this.number;
  }
}

class Child extends Parent {
  Child(int number) : super(number);

  // 부모의 함수를 덮어쓰기함
  @override
  int calculate() {
    // super키워드를 사용해 부모 Class의 모든 요소에 접근이 가능
    int result = super.calculate();
    return this.number + result;
  }
}
