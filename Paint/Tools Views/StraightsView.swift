import SwiftUI

struct StraightsView: View {
    @EnvironmentObject var straights: ObservableArray<LineShape>

    var body: some View {
        List {
            ForEach(straights.array, id: \.id) { item in
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
        .navigationTitle("Прямые")
    }
    
    func delete(at offsets: IndexSet) {
        straights.array.remove(atOffsets: offsets)
    }
}

struct StraightsView_Previews: PreviewProvider {
    static var previews: some View {
        StraightsView()
    }
}
