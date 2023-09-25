import wollok.game.*

object food {
	var property position = game.center()
	method image() = "assets/food_2.png"
	
	method moverseAleatorio(){
		
		const x = 0.randomUpTo(game.width()).truncate(0)
		const y = 0.randomUpTo(game.height()).truncate(0)
		
		position = game.at(x,y)
		
		/*console.println(position)
		console.println(x.truncate(0))
		console.println(y)*/
		
		
		
		
	}
	
	
}
