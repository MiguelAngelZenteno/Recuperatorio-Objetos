import src.categorias.*
import src.objetosMagicos.*


class Mago{
    const poderInnato
    const nombre
    var resistencia
    var puntosDeEnergiaMagica
    var objetosMagicos = []
    var categoria

    method poderInnato() = poderInnato.initialize(poderInnato.between(1, 10))
    
    method puntosDeResistencia() = resistencia
    method nombre() = nombre
    method puntosDeEnergiaMagica() = puntosDeEnergiaMagica

    method largoDelNombreEsPar() = (self.largoDelNombre()).even()
    method largoDelNombre() = nombre.size()
    method sumarEnergia(unaCantidad) {
        puntosDeEnergiaMagica+=unaCantidad
    }
    method perderEnergia(unaCantidad) {
      puntosDeEnergiaMagica -= unaCantidad
    }
    method categoria() = categoria

    method poderTotal() = objetosMagicos.sum({objetoMagico => objetoMagico.poderQueAporta(self)}) + poderInnato 
    method transferir(otroMago , unaCantidad) {
      self.perderEnergia(unaCantidad)
      otroMago.sumarEnergia(unaCantidad)
    } 

    method desafiar(otroMago) {
      (otroMago.categoria()).serDesafiado(self, otroMago)
    }
    
    method cambiarCategoria(nuevaCategoria) {
      categoria = nuevaCategoria
    }
}

const magoA = new Mago(poderInnato =3 , nombre = "magoA" , resistencia = 50 , puntosDeEnergiaMagica = 80 , objetosMagicos = [varita , amuleto , tcomun , ojota] , categoria = veterano)
const magoB = new Mago(poderInnato =1 , nombre = "magoB" , resistencia = 20 , puntosDeEnergiaMagica = 50 , objetosMagicos = [varita , tcomun] , categoria = aprendiz)
const magoC = new Mago(poderInnato =6, nombre = "magoC" , resistencia = 50 , puntosDeEnergiaMagica = 80 , objetosMagicos = [varita , amuleto , tepica] , categoria = veterano)
const magoD = new Mago(poderInnato =6, nombre = "magoD" , resistencia = 10 , puntosDeEnergiaMagica = 4 , objetosMagicos = [varita] , categoria = aprendiz)