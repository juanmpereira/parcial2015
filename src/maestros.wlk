import planeta.*

class Maestro inherits Habitante {
	var property midiclorianos
	var property sableDeLuz
	
}


class Jedi inherits Maestro{
	var property tiempoBueno
	var property pazInterior
	
	override method poder(){
		return valentia + inteligencia + (midiclorianos * 0.10) + (sableDeLuz * tiempoBueno)
	}
	
	method vivirEvento(evento){
		pazInterior= pazInterior + evento.cargaEmocional()
	}
//como cambio a Sith en caso que corresponda
}

class Sith inherits Maestro{
	var property tiempoMalo
	var property odio
	
	override method poder(){
		return valentia + inteligencia + (midiclorianos * 0.10) + (sableDeLuz * 2 + tiempoMalo)	
	}
	method vivirEvento(evento){
		if(odio>evento.cargaEmocional()){
			odio+= (odio*0.10)
		}
		else 
		{
	//cambiar a jedi		
		}
	}
	
}


class Suceso {
	var property cargaEmocional
	
}