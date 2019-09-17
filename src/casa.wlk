import cosas.* 

object casaDePepeYJulian {
	const cosas = []

	method comprar(cosa) { cosa.add(cosa) }
	method catidadDeCosas() {
		return cosas.any { cosa => cosa.esComida() }
	}
	method vieneDeEquioarse() {
		return cosas.last().esElectrodomesticos() or
			cosas.last().precio() < 5000
	}
	method esDerrochona() {
		return (cosas.sum{elemento => elemento.precio()}) >= 9000
	}	
	method compraMasCara() {
		return cosas.max (cosa => cosa.precio())
	}
	method electrodomesticosComprados() {
		return cosas.filter(cosa => cosa.esElectrodomestico())
	}
	method queFaltaComprarEmiliano(lista) {
		return (lista.asSet()).difference(cosas.asSet())
	}
	method queFaltaComprar(lista) {
		return lista.filter (deseo => not cosas.contains(deseo))
	}
}