object neo{
	var energia = 100
	method energia() = energia
	method saltar() {energia=energia/2}
	method vitalidad() = energia/10
	method esElegido() = true
}

object morfeo{
	var estaCansado = false
	var property vitalidad = 8
//	var cantDeSaltos = 0
//	var estado = ["descansado","cansado"]
//	method estado(){return estado.get(cantDeSaltos)}
//	method saltar(){
//		cantDeSaltos++
//		if (cantDeSaltos==2){
//			cantDeSaltos=0
//		}
//		vitalidad=0.max(vitalidad-1)
//	}
	//method vitalidad(){return vitalidad}
	
	method esElegido() = false
	method energia(){}
	method saltar(){
		estaCansado = not estaCansado		
		vitalidad=0.max(vitalidad-1)		
	}
	method estaCansado()= estaCansado
		
}

object trinity{
	
	method energia(){}
	method saltar(){}
	method vitalidad() = 0
	method esElegido() = false	
}



object nave{
	var pasajeros = [neo, morfeo, trinity]
	method cantidadPasajeros() = pasajeros.size()
	method mayorVitalidad() = pasajeros.max( {p=> p.vitalidad() })
	method menorVitalidad() = pasajeros.min( {p=> p.vitalidad() })
	method vitalidadEquilibrada(){return self.mayorVitalidad().vitalidad()< self.menorVitalidad().vitalidad()*2}
	
	method estaElElegido() = pasajeros.any( {p => p.esElegido()} )
	method chocar(){
		pasajeros.forEach( { p => p.saltar()} ) 
		pasajeros.clear()
	}
	method acelerar(){
		pasajeros.filter( { p => not p.esElegido()})
		.forEach( {p => p.saltar() } )
	}
	
	method acelerarV2(){
		pasajeros.forEach( {p => if(not p.esElegido()){p.saltar() }})
	}
	method noElegidos() = pasajeros.filter( { p => not p.esElegido()})
	
	method acelerarOptimo(){
		self.noElegidos().forEach({p => p.saltar()})
	}
}
