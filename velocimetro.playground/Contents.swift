//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int{

    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial: Velocidades ){
        self = .Apagado
    }
    
}

class Auto {
    
    var velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    
    init( velocidad : Velocidades ){
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad( ) -> ( actual: Int, velocidadEnCadena: String){
        
        if velocidad.rawValue == 0 {
            velocidad = Velocidades.VelocidadBaja
            
        } else if velocidad.rawValue == 20 {
            velocidad = Velocidades.VelocidadMedia
            
        } else if velocidad.rawValue == 50 {
            velocidad = Velocidades.VelocidadAlta
            
        } else {
            velocidad = Velocidades.VelocidadMedia }
        
         return (velocidad.rawValue, "\(velocidad)")
       
      }
}


var miAuto = Auto.init(velocidad: Velocidades.Apagado)

for index in 1...20 {
    if index == 1 {print ( "\(miAuto.velocidad.rawValue), \(miAuto.velocidad)" )}
    miAuto.cambioDeVelocidad()
    print ( "\(miAuto.velocidad.rawValue), \(miAuto.velocidad)" )
}