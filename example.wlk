
object pepita {
    var energia = 100
    
    method volar(distancia) {
        energia = energia - (10 + distancia)
    }
    method comer(alimento){
        energia = energia + alimento.energiaQueAporta()
    }
    method energia(){
        return energia
    }
}

object alpiste {
    method energiaQueAporta(){
        return 20
    }
}

object manzana {
    var madurez = 1
    const base = 5
    method energiaQueAporta(){
        return madurez * base
    }

    method madurez (){
        self.madurez = (madurez + 1)
    }

    method madurez (_madurez){
        madurez = _madurez
    }
}

object pepon {

  var energia = 30

  method volar(distancia) {
    energia = (energia - 20) - (2 * distancia)
  }

  method comer(alimento) {
    energia = energia + (alimento.energiaQueAporta() / 2)
  }
  
  method energia() {
    return energia
  }

}

object roque {
  var pajaro = pepita
  var cenas = 0

  method pajaro() {
    return pajaro
  }

  method alimentar(alimento) {
    pajaro.comer(alimento)
    cenas = cenas + 1
  }

  method cambiarDeAve(_ave) {
    pajaro = _ave
    cenas = 0
  }

}







