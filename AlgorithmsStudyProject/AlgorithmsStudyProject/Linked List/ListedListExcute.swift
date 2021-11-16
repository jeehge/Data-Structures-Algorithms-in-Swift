//
//  ListedListExcute.swift
//  AlgorithmsStudyProject
//
//  Created by JH on 2021/11/15.
//

import Foundation

final class ListedListExcute {
    
    static func result() {
        example(of: "creating and linking nodes") {
            let node1 = Node(value: 1)  // Node 클래스 인스턴스 1
            let node2 = Node(value: 2)  // Node 클래스 인스턴스 2
            let node3 = Node(value: 3)  // Node 클래스 인스턴스 3
            // 3개의 서로 다른 Node클래스의 인스턴스
            
            node1.next = node2  // next 에 node2 참조 할당
            node2.next = node3
            
            print(node1)
        }
        
        example(of: "push") {
            var list = LinkedList<Int>()
            list.push(3)
            list.push(2)
            list.push(1)
            
            print(list)
        }
    }
}
