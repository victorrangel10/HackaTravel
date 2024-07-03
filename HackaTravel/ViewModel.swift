//
//  viewModel.swift
//  structs
//
//  Created by Turma02-14 on 26/06/24.
//

import Foundation

class ViewModel : ObservableObject {
    
    @Published var paises : [Pais] = []
    
    func fetch() {
        guard let url = URL(string: "http://192.168.128.72:1880/buscaPais") else{
            return
        }

        let task = URLSession.shared.dataTask(with: url) {
            
            [weak self] data, _ , error in
            
            guard let data = data, error == nil else { // verifica se entrou a informacao e se nao tem erro
                return
            }
            
            do {
                let jsonDecodificado = try JSONDecoder().decode([Pais].self, from: data)
                
                DispatchQueue.main.async {
                    self?.paises = jsonDecodificado
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()

    }
}

