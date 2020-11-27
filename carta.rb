require 'byebug'

class carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        raise RangeError, "El número de la carta debe estar en un rango del 1 al 13" if numero < 1 || numero > 13
        @numero = numero
        @pinta = pinta
    end
end