# Data Structures & Algorithms in Swift 

raywenderlich 👉 [링크](https://www.raywenderlich.com/books/data-structures-algorithms-in-swift/v3.0/chapters/3-swift-standard-library)

영어 문서를 보면서 영어도 익히고 부족한 데이터 구조 및 알고리즘 공부를 위한 repo

### 목차

[Section I: Introduction](#introduction)

[Section II: Elementary Data Structures](#elementary-data-structures)

<br>
<br>

# Introduction

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

# Elementary Data Structures

## Stack

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

## Linked List


## Queue



