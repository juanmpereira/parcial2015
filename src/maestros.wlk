import planeta.*

class Maestro inherits Habitante {
	var property midiclorianos
	var property sableDeLuz
	var property estado
	var property tiempo
	var property pazInterior
	var property odio
	
	override method poder(){
		return valentia + inteligencia + (midiclorianos * 0.10) + estado.sable(tiempo,sableDeLuz)
	}
	
	method evento(evento){
		estado.vivirEvento(evento,self)
	}
	
	method cambiarEstado(est){
		estado = est
	}
	
	method cambiarPaz(cant){
			pazInterior +=cant
			}
		}
		
	method cambiarOdio(){
			odio += odio*0.10
		}
}

object jedi{	
	method sable(tiempo,sableDeLuz){
	return	sableDeLuz * tiempo
	}
	
	method vivirEvento(evento,maestro){
		maestro.cambiarPaz(evento.cargaEmocional())
		
		if(maestro.pazInterior()<=0){
			maestro.cambiarEstado(sith)
		}
	}

}

object sith {
	method sable(tiempo,sableDeLuz){
		return  sableDeLuz * 2 + tiempo
	}
	
	method vivirEvento(evento,maestro){
		
		if(maestro.odio()>evento.cargaEmocional()){
			maestro.cambiarOdio()
		}
		else 
		{
			maestro.cambiarEstado(jedi)	
		}
	}
	
}


class Suceso {
	var property cargaEmocional
	
}