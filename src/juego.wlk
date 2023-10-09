import wollok.game.*
import snake.*
import food.*
import direccion.*

object juego {
	
	const snake = new Snake()
	
	/*const widthScreen = 30
	const heightScreen = 20
	*/
	method iniciar(){		
		
		game.onTick(100, "Moverse solo", {
			snake.moverse()
			snake.verificarColisionPantalla()
		})
		
//		game.onTick(750, "Mover food dentro de la ventana", {
//			food.moverseAleatorio()
//		})
			keyboard.up().onPressDo {
				snake.cambiarDireccion(arriba)
			}
			keyboard.right().onPressDo {
				snake.cambiarDireccion(derecha)	
			}
			keyboard.left().onPressDo {
				snake.cambiarDireccion(izquierda)	
			}
			keyboard.down().onPressDo {
				snake.cambiarDireccion(abajo)	
			}
		
		self.iniciarInterfaz()
			game.onCollideDo(food, {
				quienColisiono => 
					food.moverseAleatorio()
					snake.crecer()
			})		
			game.start()
	}
	
	//console.println("6")
	method iniciarInterfaz(){
		
		game.width(30)
		game.height(20)
		game.cellSize(50)
		
		
		game.title("Snake Game")
		game.ground("assets/background_pixel.png")
		game.addVisual(food)
		game.addVisual(snake)
		game.say(snake,"OP")	
	}
}
