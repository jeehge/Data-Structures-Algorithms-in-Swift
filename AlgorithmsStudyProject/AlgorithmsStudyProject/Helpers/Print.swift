//
//  Print.swift
//  AlgorithmsStudyProject
//
//  Created by JH on 2021/11/13.
//

public func example(of description: String, action: () -> ()) {
    print("---Example of \(description)---")
    action()
    print()
}
