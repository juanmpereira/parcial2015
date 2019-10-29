class Planeta{
	var property habitantes = []
	
	method poderPlaneta(){
		return habitantes.sum({h=>h.poder()})
	}
}

class Habitante {
	var property valentia
	var property inteligencia
	
	method poder(){
		return valentia+inteligencia
	}
}


class Soldado inherits Habitante{
	var property armamento = []
	
	override method poder(){
		return valentia + inteligencia + self.equipo()
	}
	method equipo(){
		return armamento.sum({a=>a.potencia()})
	}
}


class Armamento {
	var property potencia
}