import SwiftUI
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Pentagon: InsettableShape {
    let inset: CGFloat
    
    public func inset(by amount: CGFloat) -> Pentagon {
        Pentagon(inset: self.inset + amount)
    }
    
    public func path(in rect: CGRect) -> Path {
        Path.regularPolygon(sides: 5, in: rect, inset: inset)
    }
    
    public init() {
        inset = 0
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Pentagon {
    init(inset: CGFloat) {
        self.inset = inset
    }
}
