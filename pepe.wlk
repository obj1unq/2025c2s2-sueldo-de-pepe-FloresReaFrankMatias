object pepe {
    var categoria = cadete
    var bonoResultados = bonoResultadosFijo
    var bonoPresentismo = bonoPresentismoNormal
    var faltas = 0

    method sueldo() {
        return categoria.neto()  + bonoResultados.monto(self) + bonoPresentismo.monto(self)
    }

    //setter y getters de categoria
    method categoria() {
        return categoria 
    }
    method cambiarCategoriaA(_newCAtegoria) {
        categoria = _newCAtegoria
      
    }

    //stter y getter de faltas
    method faltas() {
        return faltas
    }
    method faltar(_dias) {
        faltas = faltas + _dias
      
    }
    // setters  de bonos

    method bonoPorPresentismo(bono) {
      bonoPresentismo = bono
    }
    method bonoPorResultados(bono) {
      bonoResultados = bono
    }
    method neto() = categoria.sueldoNeto() 

    
}
// Categorías 

object cadete{
    const sueldoNeto = 15000

    method sueldoNeto(){
        return sueldoNeto
    }
}
object gerente{
    const sueldoNeto = 20000

    method sueldoNeto(){
        return sueldoNeto
    }
}

//-----------------------------------------------------------


// ====== Bonos por resultado ======
object bonoResultadosPorcentaje {
    method monto(_unEmpleado) { 
         return _unEmpleado.neto() * 0.10
    }
}

object bonoResultadosFijo {
    method monto(unEmpleado) { 
        return 800
    }
}

object bonoNulo {
    method monto() = 0
}

// ====== Bonos por presentismo ======
object bonoPresentismoNormal {
    method monto(unEmpleado) {
        if (unEmpleado.faltas() == 0) {
            return 2000
        }
        else if (unEmpleado.faltas() == 1) {
            return 1000
        }
        else  return 0
    }
}

object bonoPresentismoAjuste {
    method monto(unEmpleado) {
        if (unEmpleado.faltas() == 0){ 
             return 100
        }    
        else  return 0 
    }
}

object bonoPresentismoDemagogico {
    method monto(unEmpleado) {
        if (unEmpleado.neto() < 18000){
             return 500
        }
        else return 300
    }
}


// ====== Empleado (pepe) ======