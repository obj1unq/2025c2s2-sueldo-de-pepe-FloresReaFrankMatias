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
    method cambiarCategoriaA(nuevaCategoria) {
        categoria = nuevaCategoria
      
    }
    //stter y getter de faltas
    method faltas() {
        return faltas
    }
    method faltar(dias) {
        faltas = faltas + dias
    }
    // setters  de bonos
    method bonoPorPresentismo(bono) {
      bonoPresentismo = bono
    }
    method bonoPorResultados(bono) {
      bonoResultados = bono
    }
    method neto() = categoria.neto()  
}
// ------------------------------------------------------  Categorías  ------------------------------------------------------
object cadete{
    const sueldoNeto = 20000
    method neto(){
        return sueldoNeto
    }
}
object gerente{
    const sueldoNeto = 15000
    method neto(){
        return sueldoNeto
    }
}
object vendedor {
    var sueldoNeto = 16000
    method neto() = sueldoNeto 

    method activarAumentoPorMuchasVentas(){
        sueldoNeto = sueldoNeto * 1.25
    }
    method desactivarAumentoPorMuchasVentas() {
      sueldoNeto = sueldoNeto / 1.25
    }

}

object medioTiempo {
      var categoriaBase = cadete 

    method categoriaBase(unaCategoria) {
        categoriaBase = unaCategoria
    }
    method neto() {
        return categoriaBase.neto() / 2
    }
}




//--------------------------------  BONOS               ---------------------------

// ===========================     Bonos por resultado     ===================================
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
    method monto(unEmpleado) {
        return 0
    } 
}
// ========================= Bonos por presentismo =========================
object bonoPresentismoNormal {
    method monto(unEmpleado) {
        return if (unEmpleado.faltas() == 0)  2000
               else if (unEmpleado.faltas() == 1)  1000
               else 0
    } 
}
object bonoPresentismoAjuste {
    method monto(unEmpleado) {
    return if (unEmpleado.faltas() == 0) 100
            else 0
    }
}
object bonoPresentismoDemagogico {
    method monto(unEmpleado) {
        return if(unEmpleado.neto()< 18000)  500
               else 300
    }
}


//---------------------------------------------    SOFIA     --------------------------
object sofia {
    var categoria = cadete
    var bonoResultados = bonoResultadosFijo
    var faltas = 0

    method sueldo() {
        return categoria.neto()  + bonoResultados.monto(self) 
    }
   

    //GETTERS
    method faltas() = faltas 
    method categoria() = categoria 
    //Setters
    method cambiarCategoriaA(nuevaCategoria) {
        categoria = nuevaCategoria
    }
    method faltar(dias) {
      faltas = faltas + dias
    }
    method bonoPoResultados(bono) {
        bonoResultados = bono 
    }
    method neto() = categoria.neto() *1.3

}


//-------------------------------------  ROQUE    -----------------------

object roque {
    const neto = 28000
    var bonoPorResultados = bonoNulo 
    method sueldo() {
        return neto + bonoPorResultados.monto(self) + 9000
  }

    method bonoPorResultados(bono) {
      bonoPorResultados = bono
    }
    method neto() {
      return neto
    }


}


//-------------------------------------  ERNESTO    -----------------------

object ernesto {
    var bonoPorPresentismo = bonoNulo 
    var compañero = pepe
    const faltas = 0
    method sueldo() {
        return  compañero.neto() + bonoPorPresentismo.monto(self)
    }

    method compañero(nuevoCompañero) {
        compañero = nuevoCompañero
    }
    method neto() {
      return compañero.neto()
    }
    method bonoPorPresentismo( bono) {
        bonoPorPresentismo = bono
    }
    method faltas() {
      return faltas
    }
}




