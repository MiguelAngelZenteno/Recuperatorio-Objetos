import src.magos.*

class Varita {
    const poder
    method poderQueAporta(usuario) {
        if(usuario.largoDelNombreEsPar())
            return poder + poder/2
        else
            return poder
    }
}
class TunicaComun {
    const poder
    method poderQueAporta(usuario) = usuario.puntosDeResistencia() * 2
}

class TunicaEpica inherits TunicaComun{
    override method poderQueAporta(usuario) = super(usuario) + 10
}

class Amuletos{
    method poderQueAporta(usuario) = 200
}

object ojota { 
    method poderQueAporta(usuario) = usuario.largoDelNombre() * 10
}

const tcomun = new TunicaComun(poder = 10)
const tepica = new TunicaEpica(poder = 10)
const amuleto = new Amuletos()
const varita = new Varita(poder = 20)

