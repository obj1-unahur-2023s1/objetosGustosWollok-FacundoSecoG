import objetos.*

object estefania {
	method leGusta(objeto) { return ((objeto.color().esFuerte()) && (objeto==placa))|| (objeto==biblioteca) }
}

object rosa {
	method leGusta(objeto) { return ((objeto.peso()<2000) && (objeto==munieco)) || (objeto==remera) || (objeto==pelota) } }


object luisa {
  method leGusta(objeto) { return (objeto==placa) || (objeto==munieco) } }
  
object juan {
  method leGusta(objeto) { return ((objeto.peso()==1500) && (objeto==placa)) || (objeto==pelota) || (objeto==munieco)} }