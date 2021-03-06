# Data Structures & Algorithms in Swift 

raywenderlich 👉 [링크](https://www.raywenderlich.com/books/data-structures-algorithms-in-swift/v3.0/chapters/3-swift-standard-library)

영어 문서를 보면서 영어도 익히고 부족한 데이터 구조 및 알고리즘 공부를 위한 repo

<!--
### 목차

[Section I: Introduction](#introduction)

[Section II: Elementary Data Structures](#elementary-data-structures)

-->

1. 시간복잡도는 input 크기에 따라 알고리즘을 실행하는데 필요한 시간의 측정 값
2. 공간복잡도는 알고리즘 실행에 필요한 자원의 척도
3. O 표기법은 일반적인 형태의 시간과 공간 복잡도를 나타내는데 사용

<br>

## Swift Standard Library

Swift Standard Libray 는 swift 언어의 핵심 구성 요소가 포함된 프레임워크이다.

내부에서는 신속한 앱을 구축하는데 도움이 되는 다양한 도구와 유형을 찾을 수 있다.

자신만의 사용자 정의 데이터 구조를 만들기 전에 Swift Standard Library 가 이미 제공하는 기본 데이터 구조를 이해하는 것이 중요하다.

1. Array
2. Dictionary
3. Set

Swift는 콜렉션의 값을 저장하기 위한 배열 (array), 집합 (set), 딕셔너리 (dictionary)와 같은 3개의 원시적인 콜렉션 타입 (collection types) 을 제공한다. 

배열은 콜렉션 값에 `순서`를 가지고 있다. 

집합은 반복되지 않은 값에 `순서가 없는` 콜렉션 타입이다. 

딕셔너리는 키-값 쌍의 `순서가 없는` 콜렉션 타입이다.


참고 👉 [링크](https://bbiguduk.gitbook.io/swift/language-guide-1/collection-types)

<br>


# Stack

스택에는 두 가지 필수 작업이 있다.

- push : 스택의 맨 위에 아이템을 추가

- pop : 스택의 맨 위 아이템을 제거

즉, 한 쪽에서만 아이템을 추가하거나 제거할 수 있다.

스택은 LIFO(후입선출) 구조이다.

스택은 프로그래밍의 모든 분야에서 사용된다.

몇 가지 예를 들어보면 :

1. iOS는 탐색 스택을 사용하여 뷰 컨트롤러를 뷰 안팎으로 밀어넣고 꺼낸다
2. 메모리 할당은 아키텍처 수준에서 스택을 사용한다. 지역 변수에 대한 메모리도 스택을 사용하여 관리된다.
3. 미로에서 경로 찾기와 같은 검색 및 정복 알고리즘은 스택을 사용하여 역추적을 용이하게 한다.

<br>

# Linked List

연결리스트는 선형적으로 단방향 연속으로 정렬된 값의 모음이다.

<img width="312" alt="스크린샷 2021-11-16 오후 11 23 12" src="https://user-images.githubusercontent.com/8108570/142002822-34768872-91bb-4b31-9315-f87b95903296.png">

Node 와 Reference 는 그림과 같다.

그림에서 보는 것과 같이 2 가지 특징이 있다.

- 값을 가지고 있으며, 다음으로 올 값의 참조 정보를 가지고 있다.

- C의 포인터와 비슷

배열과 달리 `물리적인 순서`가 순차적이지 않음

한번에 원하는 데이터에 접근할 수가 없음. 이전의 데이터 값이 가리키는 곳을 따라가야 함.

이전 혹은 다음 값의 위치를 가지고 있다.

데이터를 넣거나 뺄 때 물리적인 공간의 이동없이 참조 값만 변경해주면 되기 때문에 배열에 비해 훨씬 좋다.


* 연결리스트에 값 추가하는 방법 세 

- push : 리스트의 맨 앞에 값 추가

- append : 리스트의 끝에 값 추가

- insert(after:) : 리스트의 특정 노드 뒤에 값 추가


# Queue

먼저 온 순서대로 작업을 해준다. 이게 First In First Out(FIFO) 방식입니다.

Queue는 선형 자료구조. 

- 스위프트에서 배열 구조체 (Array)

스위프트의 배열에서는 먼저 크게 늘려놓으니 빈 공간에 추가할 땐 수행 속도가 빠르다.

Array-Based Queue

|Operations|Best case|Worse case|
|----------|---------|----------|
|enqueue(_:)|O(1)|O(1)|
|dequeue(_:)|O(n)|O(n)| 
|Space Complexity|O(n)|O(n)|

dequeue(_:) <- Queue 하나 없어지고 그 자리 채우는 작업 수행시간 O(n)


예를 들어봅시다

Queue가 어떻게 작동하는지 이해하기 가장 쉬운 방법은 실제 사례를 보는 것이다.

영화표를 받기 위해 줄을 서서 기다리는 사람들을 상상해 보자!


<img width="534" alt="스크린샷 2021-11-30 오후 3 48 23" src="https://user-images.githubusercontent.com/8108570/143999262-4a4a21cb-4e4a-4361-a4cb-2f83c5cd2437.png">


영화표를 사기 위해 현재 Ray, Brian, Sam, Mic 가 줄을 서 있다.

일단 Ray가 티켓을 받으면 그는 line에서 벗어나게 된다. dequeue()를 통해 

Ray는 영화표를 사기 위한 대기줄에서 빠진다. 

종업원이 다음 사람을 부르면 Brian이 티켓을 사기 위해 한 칸 땡겨질 것이다. 

peek()를 호출하면 Brian을 반환한다.

티켓을 사기 위해 Vicki가 있다. 

enqueue("Vicki")를 호출하면 Vicki가 대기열 뒤에 추가된다.


4가지 방법으로 Queue를 만드는 방법을 익힐 것이다.

1. Array 사용
2. Linked List 사용
3. Ring Bffer 사용
4. 두 개의 Stack 사용


### Array-based implementation

Swift 표준 라이브러리는 higher-level abstractions 구축하는데 사용할 수 있는 최적화 된 코어 세트, primitive data structures 가 함께 제공된다.

그 중 하나는 연속적인 데이터, 정렬된 목록을 저장하는 데이터 구조인 배열입니다. 

배열을 사용하여 Queue를 만들어 봅시다.



### Doubly linked list implementation




### Ring buffer implementation




### Double-stack implementation





