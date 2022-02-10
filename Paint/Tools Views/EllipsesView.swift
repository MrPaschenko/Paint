import SwiftUI

struct EllipsesView: View {
    @EnvironmentObject var ellipses: ObservableArray<EllipseShape>

    var body: some View {
        List {
            ForEach(ellipses.array, id: \.id) { item in
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
        .navigationTitle("Эллипсы")
    }
    
    func delete(at offsets: IndexSet) {
        ellipses.array.remove(atOffsets: offsets)
    }
}

struct EllipsesView_Previews: PreviewProvider {
    static var previews: some View {
        EllipsesView()
    }
}
