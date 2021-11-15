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
            let node1 = Node(value: 1)
            let node2 = Node(value: 2)
            let node3 = Node(value: 3)
            
            node1.next = node2
            node2.next = node3
            
            print(node1)
        }
    }
}
