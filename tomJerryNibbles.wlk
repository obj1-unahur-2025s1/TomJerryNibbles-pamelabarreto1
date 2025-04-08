object tom {
    var ultimoRatonComido = jerry
    var energia = 50
    var distanciaRecorrida = 0 
    method comer(unRaton) {
      energia = energia + 12 + unRaton.peso()
      ultimoRatonComido = unRaton
    }
    method correr(metros){
        energia = energia - metros * 0.5
        distanciaRecorrida += metros //es lo mismo que distanciaRecorrida= distanciaRecorrida + metros
   
    } 
     method energia()  {
       return 50  //metodo de consulta 
 }
    method velocidadMaxima() {  //de consulta y retorna
      return 5 + energia / 10  //consulta
    }
    method puedeCazar(distancia) {
      return energia >= distancia / 2
    }
    method cazar(unRaton, unaDistancia) {
      if (self.puedeCazar(unaDistancia))//self refiere a el objeto en este caso TOM
      { 
        self.correr (unaDistancia)
        self.comer(unRaton)
    }
    }
}

object jerry {
  var edad = 2

  method cumplirAnios() { //indicacion
    edad += 1
  }
  method peso() {  //consulta
    return edad * 20
  }
  // method edad() {
  //   return  2
  // }
}

object nibbles {
  method peso() {
    return 35
  }
}

object laucha {
    //jorgito puede cambiar su peso a voluntad
    var peso = 30  //variable (que puede cambiar)
  method peso() {
    return peso
  }
  method peso(nuevoPeso) {
    peso = nuevoPeso
  }
}
// Inventar otro ratón
