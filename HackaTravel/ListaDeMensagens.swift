//
//  ListaDeMensagens.swift
//  HackaTravel
//
//  Created by Turma02-26 on 26/06/24.
//

import SwiftUI

struct ListaDeMensagens:  View {
    @StateObject var  vm = ViewModel()
    var body: some View {
        NavigationStack{
                VStack {
                    ZStack {
                        UnevenRoundedRectangle()
                            .foregroundColor(.darkBlue)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 35,
                                    bottomTrailingRadius: 35,
                                    topTrailingRadius: 0
                                )
                            )
                            .frame(width: 380, height: 80)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 10)
                        
                        Text("Mensagens")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .font(.largeTitle)
                            .fontDesign(.rounded)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.bottom, 35)
                            .padding(.leading, 40)
                    }
                    List{
                        ForEach(vm.paises, id: \.self){ pais in
                            ForEach(pais.familias, id: \.self){ fam in
                                NavigationLink(destination: ChatView(tipo: fam.tipo, nome: fam.nome, foto: fam.fotoDePerfil)){
                                    ItemNaListaView(width: 300,tipo: fam.tipo,nome: fam.nome,foto: fam.fotoDePerfil)
                                }
                            }
                            ForEach(pais.faculdades, id: \.self){ facul in
                                NavigationLink(destination: ChatView(tipo: facul.tipo, nome: facul.nome, foto: facul.fotoDePerfil)){
                                    ItemNaListaView(width: 300,tipo: facul.tipo,nome: facul.nome,foto: facul.fotoDePerfil)
                                }
                            }
                            ForEach(pais.pessoas, id: \.self){ pessoa in
                                NavigationLink(destination: ChatView(tipo: pessoa.tipo, nome: pessoa.nome, foto: pessoa.fotoDePerfil)){
                                    ItemNaListaView(width: 300,tipo: pessoa.tipo,nome: pessoa.nome,foto: pessoa.fotoDePerfil)
                                }
                            }
                        }
                    }
                    .listStyle(PlainListStyle())
                    Spacer()
                }
        }
        .accentColor(.darkBlue)
        .onAppear(){
            vm.fetch()
        }
    }
}

#Preview {
    ListaDeMensagens()
}
