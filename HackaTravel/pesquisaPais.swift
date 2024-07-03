//
//  pesquisaPais.swift
//  structs
//
//  Created by Turma02-14 on 26/06/24.
//

import SwiftUI

struct pesquisaPais: View {
    @State var pais : Pais = Pais(
        nome: "Brasil",
        latitude: -14.2350,
        longitude: -51.9253,
        latitudeDelta: 15.0,
        longitudeDelta: 15.0,
        bandeira: "bandeira_brasil.png",
        descricao: "O Brasil é um país localizado na América do Sul...",
        turismo: [
            Cultura(nome: "Carnaval", imagem: "carnaval.jpg"),
            Cultura(nome: "Cristo Redentor", imagem: "cristo_redentor.jpg")
            // Adicionar mais itens de turismo conforme necessário
        ],
        comidas: [
            Cultura(nome: "Feijoada", imagem: "feijoada.jpg"),
            Cultura(nome: "Pão de queijo", imagem: "pao_de_queijo.jpg")
            // Adicionar mais itens de comidas conforme necessário
        ],
        pessoas: [
            Usuario(
                nome: "João Silva",
                tipo: 3,
                fotoDePerfil: "https://img.freepik.com/fotos-gratis/close-no-homem-sorrindo-na-natureza_23-2150771075.jpg",
                fotos: ["https://s2.glbimg.com/8io5aCR_BFpjcGbvCbSNvvcG0n4=/s.glbimg.com/et/gs/f/original/2015/10/20/ana-maria-rainer-cadete-homem-aranha2.jpg", "https://cdn.pixabay.com/photo/2016/06/14/16/27/man-1456954_960_720.jpg"],
                localizacao: "São Paulo, SP",
                descricao: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
                interesses: ["Esportes", "Viagens", "Cultura"],
                info1: ["2.5M", "cidades"],
                info2: ["195", "países"],
                info3: ["4.5", "avaliação"]
            ),
            Usuario(
                nome: "Ana Silva",
                tipo: 3,
                fotoDePerfil: "https://img.freepik.com/fotos-gratis/estilo-de-vida-beleza-e-moda-conceito-de-emocoes-de-pessoas-jovem-gerente-de-escritorio-feminino-asiatico-ceo-com-expressao-satisfeita-em-pe-sobre-um-fundo-branco-sorrindo-com-os-bracos-cruzados-sobre-o-peito_1258-59329.jpg?size=626&ext=jpg&ga=GA1.1.672697106.1719360000&semt=sph",
                fotos: ["https://media.istockphoto.com/id/478167181/pt/foto/mulher-compras-sacos-de-transporte-da-torre-eiffel-paris-fran%C3%A7a.jpg?s=612x612&w=0&k=20&c=vMaHceypcG9Fsun44Bs2JDqITT7l7AK-HaapMRTcsNw=", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3g5eNFDLofTImeToL-HqDBBA5I6T-9RJALA&s"],
                localizacao: "São Paulo, SP",
                descricao: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
                interesses: ["Esportes", "Viagens", "Cultura"],
                info1: ["27", "cidades"],
                info2: ["19", "países"],
                info3: ["4.9", "avaliação"]
            )
            // Adicionar mais usuários conforme necessário
        ],
        familias: [
            Usuario(
                nome: "Familia Hacka",
                tipo: 2,
                fotoDePerfil: "https://img.freepik.com/fotos-gratis/familia-jovem-com-seus-filhos-em-casa-se-divertindo_1303-20999.jpg",
                fotos: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlBz2g1D1sXRI5SJZeGOugXkIOcbPDYDrYMA&s", "https://media.istockphoto.com/id/1446894050/pt/foto/happy-big-family-and-quality-time-bonding-of-children-parents-and-grandparents-together-on-a.jpg?s=612x612&w=0&k=20&c=0odkQcx6JWm5a8vrGM-Ch9O_KWrOqy9JGaHjc_uFgg0="],
                localizacao: "Depende",
                descricao: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
                interesses: ["Artes", "Natureza", "História"],
                info1: ["3", "visitantes"],
                info2: ["4", "quartos"],
                info3: ["4.5", "avaliação"]
            ),
            Usuario(
                nome: "Familia Truck",
                tipo: 2,
                fotoDePerfil: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtRpIoFAvGP-E4xAkbSbPCAjTKJXuvcmKW2g&s",
                fotos: ["https://media.istockphoto.com/id/1313461844/pt/foto/beautiful-multi-generational-family-sitting-together-on-couch-at-home-and-smiling-at-camera.jpg?s=612x612&w=0&k=20&c=NDURbkks1ShGdobSnSw6Zn6VDPXzy68zKycUOl5w3MA=", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzNgkldi0pzXZwGcb42SmfXlo-FA8U7ieB7UXBHpaIa89OOqHMiAYABckLAh_KjSajDd8&usqp=CAU"],
                localizacao: "Da faculdade",
                descricao: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
                interesses: ["Artes", "Natureza", "História"],
                info1: ["13", "visitantes"],
                info2: ["3", "quartos"],
                info3: ["4.8", "avaliação"]
            )
            // Adicionar mais famílias conforme necessário
        ],
        faculdades: [
            Usuario(
                nome: "UFES",
                tipo: 1,
                fotoDePerfil: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkmS6FqJUpbbnuAneHwzLAKqYcWx-glZufuA&s",
                fotos: ["https://zeittec.com.br/wp-content/uploads/2022/10/Ufes.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0uoogpnSO9xl2OzTwslk8EV3nzNt1VwfIiA&s"],
                localizacao: "Belo Horizonte, MG",
                descricao: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
                interesses: ["Tecnologia", "Ciência", "Programação"],
                info1: ["204", "estudantes"],
                info2: ["101", "cursos"],
                info3: ["4.5", "avaliação"]
            ),
            Usuario(
                nome: "UVV",
                tipo: 1,
                fotoDePerfil: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmqsh9R5z_U1zHzo6KQesJhq38igG8nSzwYA&s",
                fotos: ["https://uvv.br/wp-content/uploads/20220209-copia-de-destaque-5.png",   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-2vLOl_uEJD4KI4I73lS26cyXPYryPfKWqA&s"],
                localizacao: "Belo Horizonte, MG",
                descricao: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
                interesses: ["Tecnologia", "Ciência", "Programação"],
                info1: ["100", "estudantes"],
                info2: ["100", "cursos"],
                info3: ["4.0", "avaliação"]
            )
        ]
    )
    
    @State var lista : [Usuario] = []
    
    @State var ehFamilias : Bool = false
    @State var ehFaculdades : Bool = true
    @State var ehPessoas : Bool = false
    
    var body: some View {
        ZStack {
            Image(.desce)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.6)
            VStack(spacing: 10) {
                HStack {
                    Image(systemName: "pin.fill")
                        .foregroundColor(.darkBlue)
                    Text(pais.nome)
                        .padding(.leading, 10)
                        .foregroundStyle(.darkBlue)
                        .font(.system(size: 20))
                    Spacer()
                }
                .padding()
                
                .frame(width: 300, height: 50)
                .background(.white)
                .cornerRadius(15)
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.darkBlue, lineWidth: 2)
                )
                
                HStack {
                    Button("Faculdades") {
                        ehFaculdades = true
                        ehFamilias = false
                        ehPessoas = false
                        lista = pais.faculdades
                    }
                    .frame(width: 130, height: 25)
                    .background(ehFaculdades ? .darkBlue : .white)
                    .foregroundColor(ehFaculdades ? .white : .darkBlue)
                    .cornerRadius(4)
                    
                    
                    Button("Famílias") {
                        ehFaculdades = false
                        ehFamilias = true
                        ehPessoas = false
                        lista = pais.familias
                    }
                    .frame(width: 80, height: 25)
                    .background(ehFamilias ? .darkBlue : .white)
                    .foregroundColor(ehFamilias ? .white : .darkBlue)
                    .cornerRadius(4)
                    
                    Button("Pessoas") {
                        ehFaculdades = false
                        ehFamilias = false
                        ehPessoas = true
                        lista = pais.pessoas
                    }
                    .frame(width: 80, height: 25)
                    .background(ehPessoas ? .darkBlue : .white)
                    .foregroundColor(ehPessoas ? .white : .darkBlue)
                    .cornerRadius(4)
                    
                }
                .padding(.bottom, 20)
                
                ScrollView {
                    ForEach(lista, id: \.self) {
                        item in
                        VStack(spacing: 15) {
                            NavigationLink(destination: telaPerfil(usuario: item)) {
                                HStack {
                                    HStack(spacing: 15) {
                                        AsyncImage(url: URL(string: item.fotoDePerfil)) {
                                            item in item
                                                .resizable()
                                                .clipShape(Circle())
                                                .scaledToFill()
                                                .frame(width: 70, height: 70)
                                            
                                        } placeholder: {
                                            ProgressView()
                                                .frame(width: 70, height: 70)
                                        }
                                        
                                        VStack {
                                            HStack {
                                                Text(item.nome)
                                                    .foregroundStyle(.darkBlue)
                                                    .bold()
                                                Spacer()
                                            }
                                            HStack {
                                                Text(item.localizacao)
                                                    .foregroundStyle(.mediumBlue)
                                                    .font(.caption)
                                                Spacer()
                                            }
                                        }
                                    }
                                    Spacer()
                                }
                                .padding(.bottom, 12)
                            }
                            
                            AsyncImage(url: URL(string: item.fotos[0])) {
                                item in item
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 210)
                                    .cornerRadius(5)
                                
                            } placeholder: {
                                ProgressView()
                                    .scaledToFill()
                                    .frame(width: 210)
                            }
                            
                            Text(item.descricao)
                                .foregroundStyle(.darkBlue)
                                .font(.system(size: 15))
                                .multilineTextAlignment(.leading)
                        }
                        .padding()
                        .frame(width: 300)
                        .background(.white)
                        .cornerRadius(8)
                        .padding(.bottom, 20)
                    }
                }
            }
            //.padding(.top, 30)
            .onAppear() {
                lista = pais.faculdades
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}



#Preview {
    pesquisaPais()
}
