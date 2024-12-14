import src.magos.*


class Gremio{
    
    var miembros = #{}
    method min2Miembros(){
     miembros.initialize(miembros.size() <= 2)   
    } 
    method miembros() = miembros 


    method poderTotal() =miembros.sum({unMiembro => unMiembro.poderTotal()}) 
    method reservaDeEnergiaMagica() = miembros.sum({unMiembro => unMiembro.puntosDeEnergiaMagica()})
    method resistenciaTotalGremio() = miembros.sum({unMiembro => unMiembro.puntosDeResistencia()})
    method desaFiarOtroGremio(otroGremio) {
      if(self.poderTotal() > otroGremio.resistenciaTotalGremio() + (otroGremio.lider()).puntosDeResistencia()){
        (otroGremio.miembros()).map({unMiembro => (unMiembro.categoria()).transferir(self.lider(), unMiembro)})

      } 
    }

    method lider() = miembros.max({unMiembro => unMiembro.poderTotal()})
    method quienEsElLider() = self.lider().nombre() 
}

const gremio1 = new Gremio(miembros = #{magoA , magoB})
const gremio2 = new Gremio(miembros = #{magoC , magoD})