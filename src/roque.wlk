import ciudades.*
import wollok.game.*
import comidas.*

object roque {
	var property position = game.at(2,1)
	var property comida = comidaVacia
	method image() = "jugador.png"
	
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}
	method recolectarComida(unaComida){
		self.soltarComida()
		self.comida(unaComida)
		game.removeVisual(unaComida)
	}
	method soltarComida(){
		var comidaASoltar = self.comida()
		comidaASoltar.ubicacionRandom()
		game.addVisual(comidaASoltar)
		game.whenCollideDo(comidaASoltar, { roque => roque.recolectarComida(comidaASoltar)})
	}
	method darDeComerYSoltarComida(unaGolondrina){
		unaGolondrina.come(self.comida())
		self.soltarComida()
		self.comida(comidaVacia)
		
	}
}
