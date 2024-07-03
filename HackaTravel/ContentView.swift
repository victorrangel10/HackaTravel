//
//  ContentView.swift
//  HackaTravel
//
//  Created by Turma02-3 on 25/06/24.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
        TabView {
            TelaHome()
                .tabItem {
                    Label("Destinos", systemImage: "airplane")
                }
            mapView()
                .tabItem {
                    Label("Mapa", systemImage: "globe.americas.fill")
                }
            telaPerfilPessoal()
                .tabItem {
                    Label("Perfil", systemImage: "person.circle.fill")
                }
            ListaDeMensagens()
                .tabItem {
                    Label("Mensagens", systemImage: "message.fill")
                }
        }
        .accentColor(.darkBlue)
    }
}

#Preview {
    ContentView()
}
