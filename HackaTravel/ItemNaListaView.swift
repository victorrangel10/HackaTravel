import SwiftUI


struct ItemNaListaView : View{
    @State  var width: CGFloat
    @State  var tipo: Int
    @State  var nome: String
    @State  var foto: String
    var body: some View{
            HStack(spacing:12){
                AsyncImage(url: URL(string: foto)){ im in
                    im
                        .resizable()
                        .resizable()
                        .frame(width: 56,height: 56)
                        .scaledToFill()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                } placeholder: {
                    ProgressView()
                        .frame(width: 56,height: 56)
                }
                
                VStack(alignment: .leading,spacing: 4){
                    Text(nome)
                        .fontWeight(.semibold)
                        .foregroundStyle(.darkBlue)
                    Text("Enviou uma mensagem")
                        .foregroundStyle(.gray)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth:width-100,alignment: .leading)
                }
                .font(.subheadline)
                HStack{
                    Text("Hoje")
//                    Image(systemName: "chevron.right")
                }
                .font(.footnote)
                .foregroundStyle(.gray)
            }
            .frame(height: 72)
        }
}


#Preview {
    ItemNaListaView(width: 300, tipo: 1, nome:"Aline", foto: "https://blog.unyleya.edu.br/wp-content/uploads/2017/12/saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor.jpeg")
}
