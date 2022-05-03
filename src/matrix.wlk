object neo{
	var energia = 100
	method energia(){return energia}
	method saltar(){ energia=energia/2}
	method vitalidad(){return energia/10}
	method esElegido(){return true}
}

object morfeo{
	//var energia = 8
	var cantDeSaltos = 0
	var vitalidad = 8
	var estado = ["descansado","cansado"]
	method estado(){return estado.get(cantDeSaltos)}
	method energia(){}
	method saltar(){
		cantDeSaltos++
		if (cantDeSaltos==1){
			cantDeSaltos=0
		}
		vitalidad-=1
	}
	method vitalidad(){return vitalidad}
	method esElegido(){return false}	
}

object trinity{
	
	method energia(){}
	method saltar(){}
	method vitalidad(){return 0}
	method esElegido(){return false}	
}



object nave{
	var pasajeros = [neo, morfeo, trinity]
	method cantidadPasajeros(){return pasajeros.size()}
	method mayorVitalidad(){return pasajeros.vitalidad().max()}
	method vitalidadEquilibrada(){return pasajeros.vitalidad().max()<(pasajeros.vitalidad().min())*2}
	method estaElElegido(){return pasajeros.contains(neo)}
	method chocar(){pasajeros.saltar() and pasajeros.clear()}
	method acelerar(){(pasajeros.filter(not pasajeros.esElegido())).saltar()}
}

//1 size
