object aprendiz{
    method puedeSerDerrotado(atacante,atacado) = atacado.puntosDeResistencia() < atacante.poderTotal()
    method transferir(atacante , atacado) {
      atacado.transferir(atacante , atacado.puntosDeEnergiaMagica()/2)
    }
    method serDesafiado(atacante , atacado) {
        if(self.puedeSerDerrotado(atacante, atacado))
            self.transferir(atacante, atacado)
    } 
}
object veterano{
    method puedeSerDerrotado(atacante,atacado) = atacado.puntosDeResistencia()*1.5 < atacante.poderTotal()
    method transferir(atacante , atacado) {
      atacado.transferir(atacante , atacado.puntosDeEnergiaMagica()/4)
    }
    method serDesafiado(atacante , atacado) {
        if(self.puedeSerDerrotado(atacante, atacado))
            self.transferir(atacante, atacado)
    } 
}
object inmortal{
    method puedeSerDerrotado(atacante,atacado) = false
    method transferir(atacante , atacado) {
      atacado.transferir(atacante , 0)
    }
    method serDesafiado(atacante , atacado){}
}