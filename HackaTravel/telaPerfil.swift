//
//  ContentView.swift
//  hackaTravel
//
//  Created by Turma02-26 on 25/06/24.
//

import SwiftUI
//overlay

struct telaPerfil: View {
    
    var usuario : Usuario
    var body: some View {
        ZStack{
            Image(.hackaTravel)
                .resizable()
                .opacity(0.4)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ScrollView{
                    VStack(){
                        //cabecalho e infos
                        HStack{
                            AsyncImage(url: URL(string: usuario.fotoDePerfil)) {
                                item in item
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            } placeholder: {
                                ProgressView()
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                            }

                            VStack{
                                HStack(spacing:10){
                                    VStack{
                                        Text(usuario.info1[1])
                                            .bold()
                                            .foregroundColor(.darkBlue)
                                        Text(usuario.info1[0])
                                            .foregroundColor(.darkBlue)
                                            .font(.subheadline)
                                    }
                                    VStack{
                                        Text(usuario.info2[1])
                                            .bold()
                                            .foregroundColor(.darkBlue)
                                        Text(usuario.info2[0])
                                            .foregroundColor(.darkBlue)
                                            .font(.subheadline)
                                    }
                                    VStack{
                                        HStack{
                                            Text(usuario.info3[1])
                                                .bold()
                                                .foregroundColor(.darkBlue)
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .foregroundColor(.darkBlue)
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 16)
                                            
                                        }
                                        Text(usuario.info3[0])
                                            .foregroundColor(.darkBlue)
                                            .font(.subheadline)
                                    }
                                }
                                NavigationLink(destination: ChatView(tipo: usuario.tipo, nome: usuario.nome, foto: usuario.fotoDePerfil)) {
                                    Text("Mensagem")
                                        .frame(width: 220, height:30)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 16)
                                                .stroke(.darkBlue, lineWidth: 6)
                                        )
                                        .cornerRadius(50)
                                        .bold()
                                        .foregroundColor(.darkBlue)
                                }
                            }
                        }
                        //Nome e Localizacao
                        VStack{
                            HStack{
                                Text(usuario.nome)
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.darkBlue)
                                Spacer()
                            }
                            HStack{
                                Text(usuario.localizacao)
                                    .bold()
                                    .foregroundColor(.darkBlue)
                                Spacer()
                            }
                        }
                        .padding(.horizontal, 30)
                        //Box de texto
                        Text(usuario.descricao)
                            .padding()
                            .foregroundColor(.darkBlue)
                            .frame(width: 340)
                            .background(.lightBlue)
                            .cornerRadius(20)
                            .font(.system(size: 16))
                        HStack{
                            Text("Interesses")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.darkBlue)
                            Spacer()
                        }
                        .padding(.horizontal,30)
                        
                        HStack{
                            Text(usuario.interesses[0])
                                .frame(height: 40)
                                .padding(.horizontal)
                                .background(Color.darkBlue)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                            Text(usuario.interesses[1])
                                .frame(height: 40)
                                .padding(.horizontal)
                                .background(Color.darkBlue)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                            Text(usuario.interesses[2])
                                .frame(height: 40)
                                .padding(.horizontal)
                                .background(Color.darkBlue)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                            
                        }
                        // IMAGENS
                        HStack{
                            Text("Imagens")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.darkBlue)
                            Spacer()
                        }
                        .padding(.horizontal,30)
                        
                        ScrollView(.horizontal) {
                            HStack{
                                ForEach(usuario.fotos, id: \.self){ foto in
                                    AsyncImage(url: URL(string: foto)) {
                                        item in item.image?
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(5.0)
                                            
                                    }

                                }
                            }
                            .padding(10)
                        }
                        
                        
                    }
                }
            } 

    }
}

#Preview {
    telaPerfil(usuario: Usuario(
        nome: "João Silva",
        tipo: 1,
        fotoDePerfil: "https://img.freepik.com/fotos-gratis/close-no-homem-sorrindo-na-natureza_23-2150771075.jpg",
        fotos: ["https://s2.glbimg.com/8io5aCR_BFpjcGbvCbSNvvcG0n4=/s.glbimg.com/et/gs/f/original/2015/10/20/ana-maria-rainer-cadete-homem-aranha2.jpg", "https://cdn.pixabay.com/photo/2016/06/14/16/27/man-1456954_960_720.jpg"],
        localizacao: "São Paulo, SP",
        descricao: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
        interesses: ["Esportes", "Viagens", "Cultura"],
        info1: ["2.5M", "cidades"],
        info2: ["195", "países"],
        info3: ["4.5", "avaliação"]
    ))
}
