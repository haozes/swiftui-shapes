import SwiftUI
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Decagon: InsettableShape {
    let inset: CGFloat
    
    public func inset(by amount: CGFloat) -> Decagon {
        Decagon(inset: self.inset + amount)
    }
    
    public func path(in rect: CGRect) -> Path {
        SwiftUI.Path.regularPolygon(sides: 10, in: rect, inset: inset)
    }
    
    public init() {
        inset = 0
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Decagon {
    init(inset: CGFloat) {
        self.inset = inset
    }
}
