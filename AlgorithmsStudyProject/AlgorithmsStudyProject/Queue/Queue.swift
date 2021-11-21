//
//  Queue.swift
//  AlgorithmsStudyProject
//
//  Created by JH on 2021/11/21.
//

import Foundation

public protocol Queue {
    // associatedtype 키워드는 프로토콜을 정의할 때 제네릭 타입처럼 일반화 시킨 타입을 지정할 때 사용
    // 이 프로토콜을 재택한 것의 타입이 Int 이면 Element 는 모두 Int 가 됨
    associatedtype Element
    // 큐 끝에 새로운 큐를 추가하고 성공여부 반환
    // 구조체가 이 프로토콜 채택 가능성 있기 때문에 mutating 키워드를 붙였다
    mutating func enqueue(_ element: Element) -> Bool
    // 가장 먼저 들어온 앞의 큐를 제거하고 제거한 큐 반환
    mutating func dequeue() -> Element?
    // 큐가 비어있는지 체크. 읽기 전용
    var isEmpty: Bool { get }
    // 가장 앞의 큐를 알려줌. dequeue와 차이. 읽기 전용
    var peek: Element? { get }
}
