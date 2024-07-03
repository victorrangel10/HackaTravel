//
//  ChatView.swift
//  HackaTravel
//
//  Created by Turma02-1 on 26/06/24.
//

import SwiftUI

struct ChatView: View {
    var tipo: Int
    var nome: String
    var foto: String
    var body: some View {
        ZStack{
            //imagem de fundo
            Image(.hackaTravel)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            
            VStack{ //retangulos de user e caixa de texto
                ZStack{
                    Rectangle()
                        .frame(width: 390, height: 130)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                
                Spacer()
                
                ZStack{
                    Rectangle()
                        .frame(width: 390, height: 60)
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
            }
            
            VStack(spacing: 2){
                HStack{ //Infos do contato de conversa
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    AsyncImage(url: URL(string: foto)){ im in
                        im
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 55, height: 55)
                            .overlay(alignment: .bottomTrailing){
                                Circle().frame(width:19).foregroundColor(.white)
                                Circle().frame(width:15).foregroundColor(.green)
                            }
                        
                    } placeholder: {
                        ProgressView()
                            .frame(width: 55, height: 55)
                    }
                    
                    VStack{
                        HStack{
                            Text("\(nome)")
                                .font(.system(size: 23))
                                .bold()
                                .foregroundColor(.darkBlue)
                            Spacer()
                        }
                        HStack{
                            Text("Online agora")
                                .font(.system(size: 15))
                                .foregroundColor(.darkBlue)
                            Spacer()
                        }
                    }
                }.padding(.horizontal)
                
                Spacer()
                
                ScrollView{ //Mensagens da conversa
                    if(tipo == 1){ //Texto Universidade
                        VStack{
                            Text("Ontem, 17:35")
                                .font(.system(size: 15))
                                .bold()
                                .foregroundColor(.mediumBlue)
                            
                            HStack{
                                Spacer()
                                Text("Boa tarde! Me chamo Edilson e gostaria de me inscrever no intercâmbio de verão do curso de Artes Cênicas, entre junho e agosto.")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.darkBlue)
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal, 20)
                            
                            HStack{
                                Text("Boa tarde! Agradecemos o seu interesse. Você gostaria de acomodação e alimentação em nosso campus?")
                                    .foregroundColor(.darkBlue)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.blueish)
                                    .cornerRadius(20)
                                Spacer()
                            }
                            .padding(.horizontal, 20)
                            
                            HStack{
                                Spacer()
                                Text("Por favor, sim, gostaria. Obrigado.")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.darkBlue)
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal, 20)

                            HStack{
                                Spacer()
                                Text("Um amigo meu também está interessado. Ele deve enviar uma mensagem pra vocês ainda hoje. Gostaríamos de dividir quarto, será que é possível?")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.darkBlue)
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal, 20)


                            Text("Hoje, 10:28")
                                .font(.system(size: 15))
                                .bold()
                                .foregroundColor(.mediumBlue)
                            
                            HStack{
                                Text("Maravilha. Conseguimos colocar vocês juntos sim.")
                                    .foregroundColor(.darkBlue)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.blueish)
                                    .cornerRadius(20)
                                Spacer()
                            }
                            .padding(.horizontal, 20)

                        }

                    }
                    else if(tipo == 2){ //Texto Família
                        VStack{
                            Text("Ontem, 17:35")
                                .font(.system(size: 15))
                                .bold()
                                .foregroundColor(.mediumBlue)

                            HStack{
                                Spacer()
                                Text("Boa tarde! Me chamo Edilson e estarei em um intercâmbio de inglês na cidade de vocês entre setembro e novembro desse ano. Vocês estão disponíveis nessa data?")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.darkBlue)
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal, 20)

                            HStack{
                                Text("Boa tarde! Agradecemos o seu interesse. Estamos sim e adoraremos te receber, Edilson. Seja bem vindo a nossa família!!! 😁😁😁")
                                    .foregroundColor(.darkBlue)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.blueish)
                                    .cornerRadius(20)
                                Spacer()
                            }
                            .padding(.horizontal, 20)

                            HStack{
                                Spacer()
                                Text("Obrigado! Estou muito animado para o intercâmbio.")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.darkBlue)
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal, 20)

                            HStack{
                                Spacer()
                                Text("Um amigo meu também está interessado. Ele deve enviar uma mensagem pra vocês ainda hoje. Vocês têm outro quarto disponível?")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.darkBlue)
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal, 20)


                            Text("Hoje, 10:28")
                                .font(.system(size: 15))
                                .bold()
                                .foregroundColor(.mediumBlue)

                            HStack{
                                Text("Maravilha. Temos simm!! 🤩😁")
                                    .foregroundColor(.darkBlue)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.blueish)
                                    .cornerRadius(20)
                                Spacer()
                            }
                            .padding(.horizontal, 20)

                        }
                    }
                    else if(tipo == 3){ //Texto pessoa
                        VStack{
                            Text("Ontem, 17:35")
                                .font(.system(size: 15))
                                .bold()
                                .foregroundColor(.mediumBlue)
                            
                            HStack{
                                Spacer()
                                Text("Boa tarde! Estou muito feliz de te encontrar em Barcelona no dia 30/07. Estava pensando e acho que deveríamos ir na Sagrada Família. O que acha?")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.darkBlue)
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal, 20)
                            
                            HStack{
                                Text("Boa tarde! Também estou animada. Achei uma ótima ideia. Que tal às 10h?")
                                    .foregroundColor(.darkBlue)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.blueish)
                                    .cornerRadius(20)
                                Spacer()
                            }
                            .padding(.horizontal, 20)
                            
                            HStack{
                                Spacer()
                                Text("Perfeito. Vamos comprar os ingressos agora ou na hora?")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.darkBlue)
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal, 20)
                            
                            Text("Hoje, 10:28")
                                .font(.system(size: 15))
                                .bold()
                                .foregroundColor(.mediumBlue)
                            
                            HStack{
                                Text("Acho melhor comprarmos agora. Eu pago e depois você faz um pix pra mim. Depois da Sagrada Família podíamos ir na Casa Milà :)")
                                    .foregroundColor(.darkBlue)
                                    .padding()
                                    .frame(width: 200)
                                    .background(.blueish)
                                    .cornerRadius(20)
                                Spacer()
                            }
                            .padding(.horizontal, 20)

                        }
                    }
                }
                
                Spacer()
                
                HStack(spacing: 250){ //Caixa de texto
                    Image(systemName: "paperclip")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25)
                        .foregroundColor(.darkBlue)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)

                    
                    Image(systemName: "paperplane.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25)
                        .foregroundColor(.darkBlue)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.darkBlue, lineWidth: 2)
                )
                .padding(.bottom, 10)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(.hidden, for: .tabBar)
        
    }
}

#Preview {
    ChatView(tipo: 2, nome: "Aline Manhães", foto: "https://blog.unyleya.edu.br/wp-content/uploads/2017/12/saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor.jpeg")
}
