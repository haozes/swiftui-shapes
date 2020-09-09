import SwiftUI
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Hexagon: InsettableShape {
    let inset: CGFloat
    
    public func inset(by amount: CGFloat) -> Hexagon {
        Hexagon(inset: self.inset + amount)
    }
    
    public func path(in rect: CGRect) -> Path {
        Path.regularPolygon(sides: 6, in: rect, inset: inset)
    }
    
    public init() {
        inset = 0
    }
}

extension Hexagon {
    init(inset: CGFloat) {
        self.inset = inset
    }
}
