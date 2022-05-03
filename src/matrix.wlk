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
	var estado = [descansado,cansado]
	method estado(){estado.get(cantDeSaltos)}
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


//1 size
