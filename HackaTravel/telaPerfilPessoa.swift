//
//  ContentView.swift
//  hackaTravel
//
//  Created by Turma02-26 on 25/06/24.
//

import SwiftUI
//overlay
struct telaPerfilPessoal: View {
    let texto = "Erro!"
    var fotos = ["https://i.pinimg.com/564x/b7/be/87/b7be87f202ec492885d846614109e9f4.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTALIWfQa9eki6aodXEXNQNzT6Vv_V4dLMk1A&s",
    "https://i.pinimg.com/564x/79/18/12/7918128e218522b95cf7497c8247317b.jpg"
    ]
    @State var isshowing = false
    var body: some View {
        ZStack{
            Image(.hackaTravel)
                .resizable()
                .opacity(0.4)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView{
                VStack(spacing:20){
                    //cabecalho e infos
                    HStack{
                        Image(.edilson)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        //                        .padding(.vertical)
                        VStack{
                            HStack(spacing:10){
                                VStack{
                                    Text("200")
                                        .bold()
                                        .foregroundColor(.darkBlue)
                                    Text("Cidades")
                                        .foregroundColor(.darkBlue)
                                        .font(.subheadline)
                                }
                                VStack{
                                    Text("19")
                                        .bold()
                                        .foregroundColor(.darkBlue)
                                    Text("Paises")
                                        .foregroundColor(.darkBlue)
                                        .font(.subheadline)
                                }
                                VStack{
                                    HStack{
                                        Text("5.0")
                                            .bold()
                                            .foregroundColor(.darkBlue)
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .foregroundColor(.darkBlue)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 16)
                                        
                                    }
                                    Text("Avaliações")
                                        .foregroundColor(.darkBlue)
                                        .font(.subheadline)
                                }
                            }
                            Text("Editar Perfil")
                                .frame(width: 220,height:30)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(.darkBlue, lineWidth: 6)
                                )
                                .cornerRadius(50)
                                .bold()
                                .foregroundColor(.darkBlue)
                                .onTapGesture {
                                    self.isshowing = true
                                }
                                .alert(isPresented: $isshowing, content: {
                                    Alert(title: Text("Erro"), message: Text("Ainda estamos trabalhando nisso!"), dismissButton: .default(Text("Ok")))
                                })
                    
                        }
                    }
                    //Nome e Localizacao
                    VStack{
                        HStack{
                            Text("Edilson Almeida")
                                .font(.title)
                                .bold()
                                .foregroundColor(.darkBlue)
                            Spacer()
                        }
                        HStack{
                            //                        Image(systemName: "mappin")
                            //                            .resizable()
                            //                            .frame(width:8,height: 15)
                            //                            .foregroundColor(.darkBlue)
                            Text("Oliveira de Fátima, TO")
                                .bold()
                                .foregroundColor(.darkBlue)
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 30)
                    //Box de texto
                    Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.")
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
                        Text("Carros")
                            .frame(height: 40)
                            .padding(.horizontal, 20)
                            .background(Color.darkBlue)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                        Text("Bares")
                            .frame(height: 40)
                            .padding(.horizontal, 20)
                            .background(Color.darkBlue)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                        Text("Festas")
                            .frame(height: 40)
                            .padding(.horizontal, 20)
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
                    
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(fotos, id: \.self){ foto in
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
    telaPerfilPessoal()
}
