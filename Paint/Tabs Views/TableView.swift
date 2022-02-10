import SwiftUI

struct TableView: View {
    @EnvironmentObject var lines: ObservableArray<PointShape>
    @EnvironmentObject var straights: ObservableArray<LineShape>
    @EnvironmentObject var ellipses: ObservableArray<EllipseShape>
    @EnvironmentObject var rectangles: ObservableArray<RectShape>
    @EnvironmentObject var dumbbells: ObservableArray<LineOOShape>
    @EnvironmentObject var cubes: ObservableArray<CubeShape>

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: LinesView()) {
                    HStack {
                        Image(systemName: "alternatingcurrent")
                            .scaledToFit()
                            .frame(width: 25)
                        VStack (alignment: .leading) {
                            Text("Кривые")
                            Text("Количество: \(lines.array.count)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                
                NavigationLink(destination: StraightsView()) {
                    HStack {
                        Image(systemName: "line.diagonal")
                            .scaledToFit()
                            .frame(width: 25)
                        VStack (alignment: .leading) {
                            Text("Прямые")
                            Text("Количество: \(straights.array.count)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }

                NavigationLink(destination: EllipsesView()) {
                    HStack {
                        Image(systemName: "circle")
                            .scaledToFit()
                            .frame(width: 25)
                        VStack (alignment: .leading) {
                            Text("Эллипсы")
                            Text("Количество: \(ellipses.array.count)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }

                NavigationLink(destination: RectanglesView()) {
                    HStack {
                        Image(systemName: "rectangle")
                            .scaledToFit()
                            .frame(width: 25)
                        VStack (alignment: .leading) {
                            Text("Квадраты")
                            Text("Количество: \(rectangles.array.count)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }

                NavigationLink(destination: DumbellsView()) {
                    HStack {
                        Image(systemName: "eyeglasses")
                            .scaledToFit()
                            .frame(width: 25)
                        VStack (alignment: .leading) {
                            Text("Гантели")
                            Text("Количество: \(dumbbells.array.count)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }

                NavigationLink(destination: CubesView()) {
                    HStack {
                        Image(systemName: "cube")
                            .scaledToFit()
                            .frame(width: 25)
                        VStack (alignment: .leading) {
                            Text("Кубы")
                            Text("Количество: \(cubes.array.count)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Таблица")
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
