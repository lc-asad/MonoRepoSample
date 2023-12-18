// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Package2
//
public class Package1Class  {
    
    public var Package1Class = "Package1Class"
    
    public init(Package1Class: String = "Package1Class") {
        self.Package1Class = Package1Class
        let package2 = Package2Class()
        print(Package1Class + package2.Package2Class)
    }
}
