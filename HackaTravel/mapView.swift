//
//  mapView.swift
//  HackaTravel
//
//  Created by Turma02-26 on 26/06/24.
//

import SwiftUI
import MapKit
struct mapView: View {
   
    @State  private var position = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -14.4095261, longitude: -51.31668),
        span: MKCoordinateSpan(latitudeDelta: 35, longitudeDelta: 35))
    )
    @State private var showView: Bool = false
    @StateObject var  vm = ViewModel()
    @State var country : Pais?
    @State var nomepais = "Brasil"
    @State var bandeira = "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg"
    var body: some View {
        
        NavigationStack {
            ZStack{
                Map(position: $position){
                    ForEach(vm.paises, id: \.self){ p in
                        Annotation("\(p.nome)", coordinate: CLLocationCoordinate2D(latitude: Double(p.latitude), longitude: Double(p.longitude))){
                            NavigationLink(destination: sheetPais(pais: p)){
                                VStack {
                                    Image(.pinMapa)
                                        .renderingMode(.template)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 35)
                                        .foregroundColor(.darkBlue)
                                        .shadow(radius: 10)
                                }
                                
                            }.simultaneousGesture(TapGesture().onEnded({
                                nomepais = p.nome
                                bandeira = p.bandeira
                            }))
                        }
                    }
                }
                .ignoresSafeArea()
                
                VStack{
                    HStack{
                        Text(nomepais)
                            .foregroundStyle(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
                        AsyncImage(url: URL(string: bandeira)){ i in
                            i.image?.resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width: 33, height: 33)
                                .padding(.leading, 5)
                        }
                    }
                    .padding()
                    Spacer()
                }
            }
//            .navigationBarHidden(true)
            .onAppear(){
                vm.fetch()
            }
        }
        .accentColor(.darkBlue)
    }
}

#Preview {
    mapView()
}
