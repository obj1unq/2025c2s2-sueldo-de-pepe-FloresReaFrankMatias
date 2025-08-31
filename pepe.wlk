object pepe {
    var categoria = cadete
    var bonoResultados = 0
    var bonoPresentismo = 0
    var faltas = 0

    method sueldo() {
        return categoria.neto()  + bonoResultados.monto(self) + bonoPresentismo.monto(self)
    }
    method categoria() {
        return categoria 
    }
    method cambiarCategoriaA(_newCAtegoria) {
        categoria = _newCAtegoria
      
    }
    method faltas() {
        return faltas
    }
    method faltar(_dias) {
        faltas = faltas + _dias
      
    }
}
// ====== Categorías ======

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
         return _unEmpleado.sueldoNeto() * 0.10
    }
}

object bonoResultadosFijo {
    method monto(unEmpleado) { 
        return 800
    }
}

object bonoResultadosNulo {
    method monto(unEmpleado) = 0
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
        if (unEmpleado.sueldoNeto() < 18000){
             return 500
        }
        else return 300
    }
}

object bonoPresentismoNulo {
    method monto(unEmpleado) = 0
}

// ====== Empleado (pepe) ======
