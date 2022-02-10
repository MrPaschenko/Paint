import Foundation
import SwiftUI
import Combine

class ObservableArray<T>: ObservableObject {
    @Published var array:[T] = []

    init(array: [T]) {
        self.array = array
    }
}

class MyShape: ObservableObject, Identifiable {
    let id = UUID()
    var color: Color
    var lineWidth: CGFloat
    
    init(color: Color, lineWidth: CGFloat) {
        self.color = color
        self.lineWidth = lineWidth
    }
}

class PointShape: MyShape {
    var points: [CGPoint]
    
    init(points: [CGPoint], color: Color, lineWidth: CGFloat) {
        self.points = points
        super.init(color: color, lineWidth: lineWidth)
    }
}

class LineShape: MyShape {
    var points: [CGPoint]
    
    init(points: [CGPoint], color: Color, lineWidth: CGFloat) {
        self.points = points
        super.init(color: color, lineWidth: lineWidth)
    }
}

class EllipseShape: MyShape {
    var origin: CGPoint
    var width: CGFloat
    var height: CGFloat
    
    init(origin: CGPoint, width: CGFloat, height: CGFloat, color: Color, lineWidth: CGFloat) {
        self.origin = origin
        self.width = width
        self.height = height
        super.init(color: color, lineWidth: lineWidth)
    }
}

class RectShape: MyShape {
    var origin: CGPoint
    var width: CGFloat
    var height: CGFloat
    
    init(origin: CGPoint, width: CGFloat, height: CGFloat, color: Color, lineWidth: CGFloat) {
        self.origin = origin
        self.width = width
        self.height = height
        super.init(color: color, lineWidth: lineWidth)
    }
}

class LineOOShape: LineShape {
    var firstOrigin: CGPoint
    var secondOrigin: CGPoint
    var width: CGFloat = 30
    var height: CGFloat = 30
    
    init(firstOrigin: CGPoint, secondOrigin: CGPoint, points: [CGPoint], color: Color, lineWidth: CGFloat) {
        self.firstOrigin = firstOrigin
        self.secondOrigin = secondOrigin
        super.init(points: points, color: color, lineWidth: lineWidth)
    }
}

class CubeShape: RectShape {
    var firstOrigin: CGPoint
    var secondOrigin: CGPoint
    
    init(firstOrigin: CGPoint, width: CGFloat, height: CGFloat, color: Color, lineWidth: CGFloat) {
        self.firstOrigin = firstOrigin
        self.secondOrigin = CGPoint(x: firstOrigin.x + 40, y: firstOrigin.y - 40)
        super.init(origin: firstOrigin, width: width, height: height, color: color, lineWidth: lineWidth)
    }
    
}
