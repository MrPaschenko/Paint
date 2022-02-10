import SwiftUI

struct LinesView: View {
    @EnvironmentObject var lines: ObservableArray<PointShape>
    
    var body: some View {
        List {
            ForEach(lines.array, id: \.id) { item in
                VStack (alignment: .leading) {
                    Text("(\(String(format: "%.2f", item.points[0].x)), \(String(format: "%.2f", item.points[0].y))) → (\(String(format: "%.2f", item.points[item.points.count - 1].x)), \(String(format: "%.2f", item.points[item.points.count - 1].y)))")
                    HStack {
                        Text("Цвет:")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Rectangle()
                            .frame(width: 15, height: 15)
                            .foregroundColor(item.color)
                    }
                    Text("Толщина: \(String(format: "%.2f", item.lineWidth))")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .onDelete(perform: delete)
        }
        .navigationTitle("Кривые")

    }
    
    func delete(at offsets: IndexSet) {
        lines.array.remove(atOffsets: offsets)
    }
}

struct LinesView_Previews: PreviewProvider {
    static var previews: some View {
        LinesView()
    }
}
