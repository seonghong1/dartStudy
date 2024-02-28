void main() {
  /* ---------------------------------------------------------------------- */
  /*
   * step 12.  If, Switch 문
   */

  // 자바스크립트와 조건문은 동일
  int number001 = 20;
  if (number001 % 4 == 0) {
    print('4의 배수');
  } else if (number001 % 4 == 1) {
    print('4의 배수 아님');
  } else {
    print('둘다아님');
  }

// if문보다 속도가 빠름, 단 조건을 하나밖에 지정을 못함
  switch (number001 % 4) {
    case 0:
      print('4의 배수');
      break;

    case 1:
      print('4의 배수 아님');
      break;

    default:
      print('둘다아님');
      break;
  }

  /* ---------------------------------------------------------------------- */
  /*
   * step 13 - For, While 문
   * 
   * 모든 반복문에서 break 키워드 사용 가능
   * 
   */
  // for문은 자바스크립트와 동일한듯, i를 선언할때를 제외 0,1,2,3은 정수이기 때문에 int를 사용
  List<int> intList = [1, 2, 3, 4, 5, 6];
  for (int i = 0; intList.length > i; i++) {
    // break는 해당 조건일 경우 루프를 끝냄
    if (i == 3) {
      break;
    }
    // break처럼 반복문에서 빠져나오는게 아니라 해당 인덱스일 경우만 루프를 스킵하고 계속 진행
    if (i == 4) {
      continue;
    }

    print(intList[i]);
  }

  // 인덱스를 사용하지 못함
  for (int intItem in intList) {
    print(intItem);
  }

  // while문 , 해당조건이 완성이 될때까지 루프를 돌음
  int intNumber002 = 10;
  while (intNumber002 < 15) {
    intNumber002++;
    print(intNumber002);

    if (intNumber002 == 15) {
      break;
    }
  }

// do - while문 우선 출력을 하고 나서 조건을 판별함
  do {
    print(intNumber002);
    intNumber002++;
  } while (intNumber002 < 20);

  /* ---------------------------------------------------------------------- */
  /*
   * step 14 - Enum
   * 
   * typescript의 enum과 형태가 동일한듯
   */

  // 승인 - approved
  // 반려 - rejected
  // 대기 - pending

  Status status001 = Status.approved;

  if (status001 == Status.approved) {
    print('승인되었습니다.');
  } else {
    print('반려나 대기 되었습니다.');
  }

  print(Status.values.toList());

  /* ---------------------------------------------------------------------- */
  /*
   * step 15 - function
   * 
   * [] 옵셔널 파라미터 / {} 네임드 파라미터 / 함수를 리턴타입
   */
  List<int> functionTestList01 = [1, 2, 3, 1, 31, 23, 123, 1, 2];
  int result01 = getTotalValue(functionTestList01);
  print(result01);

  int result02 = getTotalValue2(functionTestList01, b: 3, c: 2);
  print(result02);

  /* ---------------------------------------------------------------------- */
  /*
   * step 16 - Typedef
   */

  Operation oper = add;
  var oper2 = add;
  oper2(3, 4);
  oper(1, 2);

  calculate(99, 88, add);
  calculate(99, 88, subtract);
}

/* ---------------------------main function 바깥에 정의 영역---------------------------- */
// enum
enum Status { approved, rejected, pending }

// function
// 함수 구성 요소 - 리턴타입 함수명(인자의타입 인자)
// 옵셔널 파라미터는 ? 가 아닌 대괄호를 사용
int getTotalValue(List<int> list, [int a = 1]) {
  int totalValue = 0;
  for (int i = 0; list.length > i; i++) {
    totalValue += list[i];
  }
  return totalValue;
}

// 네임드 파라미터
// []옵셔널 파라미터와 같이 사용 불가
// 호출시 getTotalValue2(functionTestList01, b: 3, c: 2); 처럼 사용가능
int getTotalValue2(List<int> list, {int b = 2, int c = 3, int d = 4}) {
  print('b = $b / c = $c / d = $d');
  int totalValue = 0;
  for (int i = 0; list.length > i; i++) {
    totalValue += list[i];
  }
  return totalValue;
}

// typedef
typedef Operation(int x, int y);

void add(int x, int y) {
  print('add : ${x + y}');
}

void subtract(int x, int y) {
  print('subtract : ${x - y}');
}

// TODO : typedef로 선언한 Operation을 사용하지 않고 그냥 일반 파라미터로 함수를 받아 호출시키는거랑 뭐가 다른건지 확인
void calculate(int x, int y, Operation oper) {
  oper(x, y);
}
