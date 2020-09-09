import SwiftUI
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Nonagon: InsettableShape {
    let inset: CGFloat
    
    public func inset(by amount: CGFloat) -> Nonagon {
        Nonagon(inset: self.inset + amount)
    }
    
    public func path(in rect: CGRect) -> Path {
        Path.regularPolygon(sides: 9, in: rect, inset: inset)
    }
    
    public init() {
        inset = 0
    }
}

extension Nonagon {
    init(inset: CGFloat) {
        self.inset = inset
    }
}
