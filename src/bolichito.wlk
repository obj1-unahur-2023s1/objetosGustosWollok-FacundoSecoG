import objetos.*

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	
	method esBrillante() { 
		const elDeMostradorBrilla = objetoEnMostrador.material().brilla()   
		const elDeVidrieraBrilla = objetoEnVidriera.material().brilla()    
		return elDeMostradorBrilla and elDeVidrieraBrilla
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() {
    return objetoEnMostrador.peso()>objetoEnVidriera.peso()
	}
	
	method tieneAlgoDeColor(color) {
    return ((objetoEnMostrador.color()==color) || (objetoEnVidriera.color()==color))
	}

	method puedeOfrecerleAlgoA(persona) {
    return persona.leGusta(objetoEnMostrador) || persona.leGusta(objetoEnVidriera)
	}
  
  method puedeMejorar() {
    return self.esMonocromatico() || self.estaDesequilibrado()
  }
}