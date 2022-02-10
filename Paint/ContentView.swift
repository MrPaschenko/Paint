import SwiftUI

struct ContentView: View {
    var lines: ObservableArray<PointShape> = ObservableArray(array: [])
    var straights: ObservableArray<LineShape> = ObservableArray(array: [])
    var ellipses: ObservableArray<EllipseShape> = ObservableArray(array: [])
    var rectangles: ObservableArray<RectShape> = ObservableArray(array: [])
    var dumbbells: ObservableArray<LineOOShape> = ObservableArray(array: [])
    var cubes: ObservableArray<CubeShape> = ObservableArray(array: [])

    var body: some View {
        TabView {
            DrawingView()
                .tabItem {
                    Text("Полотно")
                    Image(systemName: "scribble")
                }
            
            TableView()
                .tabItem {
                    Text("Таблица")
                    Image(systemName: "tablecells")
                }
        }
        .environmentObject(lines)
        .environmentObject(straights)
        .environmentObject(ellipses)
        .environmentObject(rectangles)
        .environmentObject(dumbbells)
        .environmentObject(cubes)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
