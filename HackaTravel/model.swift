//
//  structsTravel.swift
//  structs
//
//  Created by Turma02-14 on 26/06/24.
//

import Foundation

struct Usuario : Decodable, Hashable {
    var nome : String
    var tipo : Int
    var fotoDePerfil : String
    var fotos : [String]
    var localizacao : String
    var descricao : String
    var interesses : [String]
    var info1 : [String]
    var info2 : [String]
    var info3 : [String]
    
    
}

struct Cultura : Decodable, Hashable {
    var nome : String
    var imagem : String
}

struct Pais : Decodable, Hashable {
    var nome : String
    
    var latitude : Float
    var longitude : Float
    var latitudeDelta : Float
    var longitudeDelta : Float
    
    var bandeira : String
    var descricao : String
    
    var turismo : [Cultura]
    var comidas : [Cultura]
    
    var pessoas : [Usuario]
    var familias : [Usuario]
    var faculdades : [Usuario]

}

