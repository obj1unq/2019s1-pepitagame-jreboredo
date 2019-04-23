import wollok.game.*

object manzana {
	var property position = game.at(5,5)
	method image() = "manzana.png"
	method energia() = 80
	method ubicacionRandom(){
		self.position(game.at((1.randomUpTo(5)),(1.randomUpTo(5))))
	}
}

object alpiste {
	var property position = game.at(5,1)
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
