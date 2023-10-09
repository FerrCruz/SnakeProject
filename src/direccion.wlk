
class Direccion {
	method moverse(snake){
	}
}

object derecha inherits Direccion{
	override method moverse(snake){
		snake.moverseDerecha()
	}
}

object arriba inherits Direccion {
	override method moverse(snake){
		snake.moverseArriba()
	}
}

object abajo inherits Direccion{	
	override method moverse(snake){
		snake.moverseAbajo()		
	}
}

object izquierda inherits Direccion{
	override method moverse(snake){
			snake.moverseIzquierda()
	}
}
