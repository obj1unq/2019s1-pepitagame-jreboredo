import ciudades.*
import wollok.game.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property position = game.at(3,3)
	method image() {
		if(self.estaGorda()){
			return "pepita-gorda-raw.png"
		}else{
			return "pepita.png"
		}
	}
	method estaGorda(){
		return self.energia() > 100
	}
	method come(comida) {
		energia = energia + comida.energia()
	}
	method puedeVolarPorEnergia(unaCiudad){
		return (self.energia() >= self.energiaParaVolar(self.distanciaA(unaCiudad)))
	} 
	method distanciaA(unaCiudad){
		return position.distance(unaCiudad.position()) 
		/*(unaCiudad.position()) - self.position()*/
	}
	/*Se agrega la logica para probar y testear en el pepitaGame. Pero se deja la funcion cometnada. */
	method volaHacia(unaCiudad) {
		if (not(self.puedeVolarPorEnergia(unaCiudad))){
			game.say(self, "Dame de Comer Primero")
		}else if(ciudad != unaCiudad) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}else{
			game.say(self,("Ya estoy en " + self.ciudad().nombre() + "!!"))
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
	}	
}
