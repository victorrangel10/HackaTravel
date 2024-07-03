//
//  ContentView.swift
//  hackaTravel
//
//  Created by Turma02-26 on 25/06/24.
//

import SwiftUI
//overlay
struct telaPerfilPessoal: View {
    var body: some View {
        ZStack{
            Image(.hackaTravel)
                .resizable()
                .opacity(0.4)
            ScrollView{
                VStack(spacing:20){
                    //cabecalho e infos
                    HStack{
                        Image(.aline)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        //                        .padding(.vertical)
                        VStack{
                            HStack(spacing:10){
                                VStack{
                                    Text("2.5M")
                                        .bold()
                                        .foregroundColor(.darkBlue)
                                    Text("Cidades")
                                        .foregroundColor(.darkBlue)
                                        .font(.subheadline)
                                }
                                VStack{
                                    Text("195")
                                        .bold()
                                        .foregroundColor(.darkBlue)
                                    Text("Paises")
                                        .foregroundColor(.darkBlue)
                                        .font(.subheadline)
                                }
                                VStack{
                                    HStack{
                                        Text("4.5")
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
                            Text("Mensagem")
                                .frame(width: 220,height:30)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(.darkBlue, lineWidth: 6)
                                )
                                .cornerRadius(50)
                                .bold()
                                .foregroundColor(.darkBlue)
                        }
                    }
                    //Nome e Localizacao
                    VStack{
                        HStack{
                            Text("Aline Manhães")
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
                        Text("Doces")
                            .frame(width: 100,height: 40)
                            .background(Color.darkBlue)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                        Text("Tecnologia")
                            .frame(width: 120,height: 40)
                            .background(Color.darkBlue)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                        Text("Disney")
                            .frame(width: 100,height: 40)
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
                            ForEach(0..<5){ _ in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 150,height: 150)
                            }
                        }
                    }
                    
                    
                }
            }
        }
    }
}

#Preview {
    telaPerfilPessoal()
}
