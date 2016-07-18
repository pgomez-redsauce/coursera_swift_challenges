//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad = Velocidades(rawValue: 0)
    
    init( velocidad : Velocidades ){
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad( ) -> ( actual: Int, velocidadEnCadena: String){
        
    }
    
    
}