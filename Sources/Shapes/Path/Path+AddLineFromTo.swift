import SwiftUI
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public extension SwiftUI.Path {
    mutating func addLine(from p1: CGPoint, to p2: CGPoint) {
        self.move(to: p1)
        self.addLine(to: p2)
    }
}
