import wollok.game.*
import food.*

class Snake {
	
	var property position = game.center()
	var direccion = "arriba"
	
	var siguienteParte = null
	
	method image() {
		return "assets/body_snake_2.png"
	} 
	
	method crecer() {
		const snake = new Snake(position = self.position())
		siguienteParte = snake
		game.addVisual(snake)
	}
	
	method moverse() {
		if(siguienteParte != null) {
			siguienteParte.position(self.position())
		}
		//Ver otra manera de implementar o reestructurar este codigo con polimorfismo
		if(direccion == "arriba") {
			self.moverseArriba()
		} else if(direccion == "izquierda") {
			self.moverseIzquierda()			
		}else if(direccion == "derecha"){
			self.moverseDerecha()
		}else {
			self.moverseAbajo()
		}
	}
	
	method cambiarDireccion(nuevaDireccion) {
		direccion = nuevaDireccion
	}
	
	method moverseArriba() {
		position = position.up(1)	
		self.verificarColisionFoodYSnake()
	}
	method moverseAbajo() {
		position = position.down(1)
		self.verificarColisionFoodYSnake()		
	}
	method moverseIzquierda() {
		position = position.left(1)
		//console.println(position.x())
		self.verificarColisionFoodYSnake()		
	}
	method moverseDerecha() {
		position = position.right(1)
		self.verificarColisionFoodYSnake()		
	}
	
	method verificarColisionFoodYSnake(){
		
		console.println("SnakeX= "+position.x())
		console.println("SnakeY= "+position.y())
		console.println("FoodX= "+food.position().x())
		console.println("FoodY= "+food.position().y())
		
	}
}

