import SwiftUI

struct RectanglesView: View {
    @EnvironmentObject var rectangles: ObservableArray<RectShape>

    var body: some View {
        List {
            ForEach(rectangles.array, id: \.id) { item in
                VStack (alignment: .leading) {
                    Text("(\(String(format: "%.2f", item.origin.x)), \(String(format: "%.2f", item.origin.y))) → (\(String(format: "%.2f", item.origin.x + item.width)), \(String(format: "%.2f", item.origin.y + item.height)))")
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
        .navigationTitle("Квадраты")
    }
    
    func delete(at offsets: IndexSet) {
        rectangles.array.remove(atOffsets: offsets)
    }
}

struct RectanglesView_Previews: PreviewProvider {
    static var previews: some View {
        RectanglesView()
    }
}
