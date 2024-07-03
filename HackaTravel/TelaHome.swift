//
//  Tela01.swift
//  HackaTravel
//
//  Created by Turma02-3 on 25/06/24.
//

import SwiftUI

struct TelaHome: View {
    @State private var searchText = ""
    @StateObject var  vm = ViewModel()
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image(.hackaTravel)
                    .resizable()
                    .edgesIgnoringSafeArea(.top)
                    .opacity(0.5)
                
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
                        
                        HStack {
                            Text("Bem-vindo!")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                .font(.largeTitle)
                                .fontDesign(.rounded)
                                .bold()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Image(systemName: "airplane")
                                .resizable()
                                .foregroundColor(.lightBlue)
                                .rotationEffect(.degrees(-25))
                                .frame(width: 40, height: 40)
                        }
                        .padding(.horizontal, 40)
                        .padding(.bottom, 35)
                        
                    }.onAppear(){
                        vm.fetch()
                    }
                    
                    Spacer()
                    
                    
                    VStack{
                        Text("Para onde você quer viajar hoje, ")
                            .font(.title)
                            .fontDesign(.rounded)
                            .bold()
                            .foregroundColor(.darkBlue)
                        
                        + Text("Edilson")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .italic()
                            .foregroundColor(.darkBlue)
                        + Text("?")
                            .font(.title)
                            .fontDesign(.rounded)
                            .bold()
                            .foregroundColor(.darkBlue)
                        
                    }
                     
                    ScrollView {
                        ForEach(vm.paises, id: \.self){ p in
                            NavigationLink(destination: pesquisaPais(pais: p)){
                                ZStack{
                                    RoundedRectangle(cornerRadius: 25)
                                        .frame(width: 290, height: 50)
                                        .foregroundColor(.darkBlue)
                                        .opacity(0.2)
                                    
                                    HStack{
                                        AsyncImage(url: URL(string: p.bandeira)){ i in
                                            i.image?.resizable()
                                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                                .frame(width: 33, height: 33)
                                                .padding(.trailing)
                                        }
                                        
                                        Text(p.nome)
                                            .foregroundStyle(.darkBlue)
                                            .font(.title3)
                                            .fontWidth(.expanded)
                                        
                                        Spacer()
                                    }
                                    .padding(.horizontal, 55)
                                }
                            }
                        }
                    }
                    
                    Spacer()
                }
            }
        }
        .accentColor(.darkBlue)
    }
}

#Preview {
    TelaHome()
}
