object liga {

const candidatos = []
const guardianes = []

var rolDestacado = inicial

 method agregarCandidato(unCandidato){
  candidatos.add(unCandidato)
 }

 method eliminarCandidato(unCandidato){
  candidatos.remove(unCandidato)
 }

  method cambiarRol(nuevoRol){
    rolDestacado = nuevoRol
  }

   method rolDestacado() = rolDestacado

  method fuerzaTotal(){
    return guardianes.sum({g => g.fuerza()})
  }
   method entrenarCandidatos(){
     candidatos.forEach({ c => c.entrenar()})
   }

   method puedeSoportarAtaque(unValor){
    return self.fuerzaTotal() > unValor*2
   }

   method superarEvaluacionPara(unRol){
     guardianes.addAll(self.aplicanA(unRol))
     candidatos.removeAll(self.aplicanA(unRol))
    
   }

   method aplicanA(unRol){
    return candidatos.filter({c => unRol.puedeOcuparRol(c)})
   }

}

/*Roles*/
object ayudante {
  var fuerzaMinima = 0
  var fuerzaMaxima = 100

  method cambiarFuerzaMinima(unValor){
    fuerzaMinima = unValor
  }
  
  method cambiarFuerzaMaxima(unValor){
    fuerzaMaxima = unValor
  }
method puedeOcuparRol(unCandidato){
   unCandidato.fuerza().between(fuerzaMinima,fuerzaMaxima)
}
 


}

object estratega {
  
method puedeOcuparRol(unCandidato){
  return unCandidato.esAvanzado()
}

  
}
object inicial {

  method puedeOcuparRol(unCandidato)= true
  
}


/*Candidatos*/
object helia{

   method fuerza(){
    return 22
   }

   method entrenar(){}

}

object astro{
  var cantidadDeArmas = 0

  method entrenar(){
    cantidadDeArmas += 1
  }

  method fuerza(){
    return cantidadDeArmas*10
  }

  method esAvanzado(){
    return cantidadDeArmas > 5
  }

}

object zoe {
  const rolesAprendidos = []

  method entrenar(){
    if (!rolesAprendidos.contains(liga.rolDestacado())){
      rolesAprendidos.add(liga.rolDestacado())
    }
  }
  
  method esAvanzado(){
    return rolesAprendidos.contains(estratega)
  }  

  method fuerza(){
    return 8 + rolesAprendidos.size()
  }
}