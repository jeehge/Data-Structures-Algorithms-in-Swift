//
//  LinkedList.swift
//  AlgorithmsStudyProject
//
//  Created by JH on 2021/11/15.
//

import Foundation

// 전체 연결리스트를 관리하는 하는 LinkedList struct
public struct LinkedList<Value> {
    
    public var head: Node<Value>?   // 연결리스트의 첫 번째 노드
    public var tail: Node<Value>?   // 연결리스트의 마지막 노드
    
    public init() {}
    
    public var isEmpty: Bool {
        head == nil // head 와 nil 을 비교해서 nil 이라면 true 반환
    }
    
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
}

/**
 연결리스트는 왜 구조체일까?
 보통은 구조체를 쓰고 특정 목적으로 클래스를 사용한다.
 Node는 연결리스트에서 노드가 추가되고, 제거되는 과정에서 메모리가 할당되고 해제되는데 그 과정은 모두 하나의 노드들이 참조가 추가되고 삭제되는 과정이다.
 Node가 구조체라면 next에 새로운 노드가 생길 때마다 값이 복사되어 메모리 관리에 안전하다
 */

extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}
