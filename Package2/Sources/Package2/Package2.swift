// The Swift Programming Language
// https://docs.swift.org/swift-book

import Package1

public class Package2Class  {
    
    public var Package2Class = "Package2Class"
    
    public init(Package1Class: String = "Package2Class") {
        self.Package2Class = Package1Class
        print(Package1Class)
    }
}
