import wollok.game.*
import snake.*


object juego {
	method iniciar(){		
		game.width(30)
		game.height(20)
		game.cellSize(25)
		game.title("Snake Game")
		game.ground("assets/background_pixel.png")
		game.addVisual(snake)
		game.start()
		
	}
}
