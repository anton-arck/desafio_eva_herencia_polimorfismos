#Ejercicio 2 Desafio evaluado herencia, polimorfismos y módulos

#Modules
module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end
module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

#Super class
class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

#Subclasses < Animal 
class Ave < Animal
    include Habilidades::Caminante
end

class Mamifero < Animal
    include Habilidades::Caminante
end

class Insecto < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Habilidades::Herbivoro
end

#Subclasses < Ave
class Pinguino < Ave
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro    
end

class Pato < Ave
    include Habilidades::Volador
    include Habilidades::Nadador

end

#Subclasses < Mamifero
class Perro < Mamifero
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Alimentacion::Herbivoro
end

#Subclasses < Insecto
class Mosca < Insecto

end

class Mariposa < Insecto

end

class Abeja < Insecto

end


pinguino1 = Pinguino.new("Charlie")
p pinguino1.nombre
p pinguino1.sumergir
p pinguino1.nadar
p pinguino1.caminar

