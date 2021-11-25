//
//  QueueArray.swift
//  AlgorithmsStudyProject
//
//  Created by JH on 2021/11/21.
//

import Foundation

public struct QueueArray<T>: Queue { // Queue 프로토콜 채택
    // 제네릭 타입 T로 Queue 프로토콜의 Element 타입이 추론
    private var array: [T] = []
    public init() {}
    
    public var isEmpty: Bool {
        array.isEmpty
    }
    
    public var peek: T? {
        array.first
    }
    
    public mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    
    public mutating func dequeue() -> T? {
        // 비어있으면 제거해야 할 것이 없으므로 반환값도 없음
        // dequeue 시 element를 앞으로 한 칸 씩 이동시켜야 함으로 비효율적 -> 성능 낮아짐
        isEmpty ? nil : array.removeFirst()
    }
}
