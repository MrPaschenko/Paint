import SwiftUI

struct CubesView: View {
    @EnvironmentObject var cubes: ObservableArray<CubeShape>

    var body: some View {
        List {
            ForEach(cubes.array, id: \.id) { item in
                VStack (alignment: .leading) {
                    Text("(\(String(format: "%.2f", item.firstOrigin.x)), \(String(format: "%.2f", item.firstOrigin.y))) → (\(String(format: "%.2f", item.secondOrigin.x)), \(String(format: "%.2f", item.secondOrigin.y)))")
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
        .navigationTitle("Кубы")
    }
    
    func delete(at offsets: IndexSet) {
        cubes.array.remove(atOffsets: offsets)
    }
}

struct CubesView_Previews: PreviewProvider {
    static var previews: some View {
        CubesView()
    }
}
