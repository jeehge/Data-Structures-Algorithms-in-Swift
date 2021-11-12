//
//  Stack.swift
//  AlgorithmsStudyProject
//
//  Created by JH on 2021/11/13.
//

import Foundation

public struct Stack<Element> {
    
    private var storage: [Element] = []
    
    public init() { }
    
    // MARK: - 스택 필수 작업
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    // MARK: - 스택을 쉽게 사용할 수 있는 작업
    // 스택의 최고 아이템 반환
    public func peek() -> Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
}

extension Stack: CustomStringConvertible {
    
    /**
     storage.map { "\($0)" } 을 통해 아이템을 문자열로 매핑하는 배열 생성
     reversed()를 사용하여 이전 배열을 반전시키는 새 배열 생성
     joined(separator: )을 사용하여 배열을 문자열로 평평하게 함
     "\n"을 사용하여 배열의 아이템을 분리
     */
    public var description: String {
    """
    ----top----
    \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
    -----------
    """
    }
}
