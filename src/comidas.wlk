import wollok.game.*

class Manzana {
	var property position
	method image() = "manzana.png"
	method energia() = 80
	method ubicacionRandom(){
		self.position(game.at((1.randomUpTo(5)),(1.randomUpTo(5))))
	}
}
 
class Alpiste {
	var property position
	method image() = "alpiste.png"
	method energia() = 5
	method ubicacionRandom(){
		self.position(game.at((1.randomUpTo(5)),(1.randomUpTo(5))))
	}
	}

object comidaVacia {
	var property position = game.at(500,500 )
	method energia() = 0
	method ubicacionRandom(){}

}
