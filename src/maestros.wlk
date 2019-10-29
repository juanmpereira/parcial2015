import planeta.*

class Maestro inherits Habitante {
	var property midiclorianos
	var property sableDeLuz
	var property estado
	
	override method poder(){
		return valentia + inteligencia + (midiclorianos * 0.10) + estado.sable(sableDeLuz)
	}
	
	method evento(evento){
		estado.vivirEvento(evento,self)
	}
	
	method cambiarEstado(est){
		estado = est
	}
	
	}


class Jedi {
	var property pazInterior = 1000
	var property tiempo = 0
		
	method sable(sableDeLuz){
	return	sableDeLuz * tiempo
	}
	
	method vivirEvento(evento,maestro){
		pazInterior += evento.cargaEmocional()
		
		if(pazInterior<=0){
			maestro.cambiarEstado(new Sith())  
		}
	}

}


class Sith  {
	var property odio = 100
	var property tiempo = 0
	
	method sable(sableDeLuz){
		return  sableDeLuz * 2 + tiempo
	}
	
	method vivirEvento(evento,maestro){
		
		if(maestro.odio()>evento.cargaEmocional()){
			odio += odio*0.10
		}
		else 
		{
			maestro.cambiarEstado(new Jedi())	
		}
	}
	
}


class Suceso {
	var property cargaEmocional
	
}