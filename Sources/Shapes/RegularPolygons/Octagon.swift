import SwiftUI
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Octagon: InsettableShape {
    let inset: CGFloat
    
    public func inset(by amount: CGFloat) -> Octagon {
        Octagon(inset: self.inset + amount)
    }
    
    public func path(in rect: CGRect) -> Path {
        Path.regularPolygon(sides: 8, in: rect, inset: inset)
    }
    
    public init() {
        inset = 0
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Octagon {
    init(inset: CGFloat) {
        self.inset = inset
    }
}
