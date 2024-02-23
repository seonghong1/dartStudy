/*
 *  - 다트 프로젝트 생성 및 실행 - 
 *  01. command + shift + p 로 dart project생성 (console app)
 *  02. fn + F5 클릭시 dart프로젝트 실행 (debug console에서 확인 가능)
 */

import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

/*
 * step 01. main function 
 * 다트 프로젝트를 실행하면 main function이 호출됨
 * main function이 필수로 존재해야됨
 */
void main(List<String> arguments) {
  /* step 02. 변수선언 */
  var name = 'seong hong';
  name = 'changed name';
  print(name);
/* ---------------------------------------------------------------------- */
  /*
   * step 03. 숫자 변수 선언
   * Number타입과 동일하게 사칙연산이 가능
   */
  // 정수 변수 선언 int
  int intNumber1 = 12;
  int intNumber2 = 2;
  print(intNumber1);
  print(intNumber1 * intNumber2);

  // 실수 변수 선언 double
  double doubleNumber1 = 1.5;
  double doubleNumber2 = 2.2;
  print(doubleNumber1);
  print(doubleNumber1 + doubleNumber2);

  // 정수 변수를 double로 선언 (실수를 int로 선언은 불가)
  double intNumber3 = 2;
  print(intNumber3);
/* ---------------------------------------------------------------------- */
  /*
  * step 04. 문자열 변수 선언
  */
  String string01 = 'string';
  String string02 = ' + string';
  print(string01 + string02);
  // '$변수명' --> 자바스크립트의 뱁틱 안의 `${변수명}` 과 동일한 문법인듯
  // string변수만 사용 가능한게 아니라 모든 변수가 아래와 같이 사용 가능
  print('$string01$string02');
  print('$intNumber1+$intNumber2');
/* ---------------------------------------------------------------------- */
  /*
  * step 05. Boolean 변수 선언
  */
  bool isTrue = true;
  bool isFalse = false;
  print('$isTrue -- $isFalse');
/* ---------------------------------------------------------------------- */
  /*
  * step 06. var, dynamic 타입
  */
  // -- var 변수 선언, 처음 할당된 값에 따라 변수의 타입이 결정됨
  var varName = 'seonghong';
  // varName = 1 error, 처음 할당된 값의 타입으로 타입이 지정됨
  var varNunmber = 2;
  print('$varName + $varNunmber');

  // -- dynamic 재할당시 아무런 타입의 값을 할당 가능
  dynamic dynamicName = 'jo seong hong';
  dynamicName = '2';
  print(dynamicName);

  // -- var을 선언만 할경우 dynamic 변수와 동일하게 동작 (권장X)
  var varTest;
  varTest = 'string';
  varTest = 2;
  print(varTest);
/* ---------------------------------------------------------------------- */
  /*
  * step 07. List 타입 (array)
  */
  // -- List 변수
  List countList01 = [1, 2, 3];

  // List의 인덱스에 접근하는 방법은 동일한듯
  print(countList01[2]);
  // 배열 요소 삭제 및 제거
  countList01.add(4); // push와 동일, 맨뒤에 추가
  countList01.removeAt(1); // 제거하고자 하는 index를 넣어줌
  countList01[0] = 'test';
  print(countList01);

  // -- List 변수 타입지정
  List<String> stringList01 = [];
  // stringList01.add(1); error, int타입을 string타입의 배열에 넣을 수 없음
  stringList01.add('test');

  // -- List의 길이 지정 fixed length list
  // 강의에서는 new List() 생성자 함수를 사용해 배열을 만들지만 dart에서는 권장하지 않는 방법이라고함
  List<String> stringList02 = List<String>.filled(3, '');
  // stringList02.add('test') -> error
  // stringList02.removeAt(0); -> error
  stringList02[0] = '1';
  stringList02[1] = '2';
  stringList02[2] = '3';
  // stringList02[3] = '3'; -> error

  print(stringList02);
/* ---------------------------------------------------------------------- */
  /*
  * step 08. Map 타입 (Object)
  */
  Map mapData01 = {'name': 'seonghong', 'age': 24, 'job': 'developer'};
  print(mapData01);

  // Map데이터 추가
  mapData01.addAll({"test": 'testValue'});
  print(mapData01);
  // Map데이터 삭제
  mapData01.remove("test");
  print(mapData01);
  // Map데이터 변경
  mapData01['name'] = 'changedName';
  mapData01['name'] = 1; // 변경시 타입은 상관없는듯?
  print(mapData01);
  // Map 변수를 생성하는 방법
  Map mapData001 = {};
  Map mapData002 = new Map();
  // Map 데이터의 key만 추출
  print(mapData01.keys.toList());
  // Map 데이터의 value만 추출
  print(mapData01.values.toList());

  // Map 변수 선언시 타입 지정 <키값, value값> 키값은 동일하게 고유해야됨
  Map<String, int> price = {
    'apple': 2000,
    'banana': 3000,
  };
/* ---------------------------------------------------------------------- */
  /*
  * step 09. 변수 및 함수 선언 규칙 (권장되는 코딩 컨벤션)
  */
  // 두단어 이상일땐 카멜케이스 사용, private 변수는 앞에 _ 사용 ex) _name
/* ---------------------------------------------------------------------- */
  /*
  * step 10. Final, Const
  */

  final String finalData = 'test';
  // finalData = '222'; -> error 재할당 불가
  const constData = "const";
  // const와 final의 차이 const는 컴파일 이전에 값이 할당 되어야됨 / final은 컴파일 단계에서 값이 할당됨

/* ---------------------------------------------------------------------- */
/*
  * step 11. Operators
  */

// 계산
  int intData1 = 2;
  int intData2 = 2;
  print(intData1 + intData2);
  intData1++;
  intData2++;
  print(intData1 + intData2);

  var intData3;
  // ??= value -> 앞의 변수의 값이 null이면 value를 할당
  intData3 ??= 3;
  print(intData3);
}
