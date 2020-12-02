require 'byebug'
require_relative 'carta'
class Baraja
    attr_accessor :cartas
    def initialize(cartas = [])
        @cartas = cartas
        ['C','D','E','T'].each do |pinta|
            13.times do |i|
                @cartas.push( Carta.new(i+1, pinta) )
            end
        end
        @cartas
        
        #puts @cartas
    end
    
    def Barajar
        @cartas.shuffle!
        
#        print @cartas
    end
    def Sacar1
        @cartas.pop
    end
    def Repartir_Mano
        @cartas[0..4]
    end
end
baraja = Baraja.new
#Barajar
barajar2 = baraja.Barajar

#Sacar 1 carta
sacar1 = baraja.Sacar1
print "Carta = #{sacar1.numero} - Pinta = #{sacar1.pinta}\n"

#Mostar 5 cartas
#mostrar = baraja.Repartir_Mano
print baraja.Repartir_Mano
